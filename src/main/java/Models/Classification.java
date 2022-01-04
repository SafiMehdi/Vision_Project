package Models;


import java.io.File;
import java.util.Random;
import javax.swing.JFrame;
import weka.attributeSelection.AttributeSelection;
import weka.attributeSelection.InfoGainAttributeEval;
import weka.attributeSelection.Ranker;
import weka.classifiers.Classifier;
import weka.classifiers.Evaluation;
import weka.classifiers.trees.J48;
import weka.core.DenseInstance;
import weka.core.Instance;
import weka.core.Instances;
import weka.core.Utils;
import weka.core.converters.CSVLoader;
import weka.core.converters.ConverterUtils.DataSource;
import weka.filters.Filter;
import weka.filters.unsupervised.attribute.Remove;
import weka.gui.treevisualizer.PlaceNode2;
import weka.gui.treevisualizer.TreeVisualizer;

//This is a Decision Tree Classifier

public class Classification {

	private static Instances data;
	private J48 tree;

	public Classification(String csv) throws Exception {
		CSVLoader csvLoader = new CSVLoader();
		csvLoader.setSource(new File(csv));
		data = csvLoader.getDataSet();
		System.out.println(data);
		
	}

	public void removeFirstAttribute() throws Exception {
		Remove remove = new Remove();
		String[] opts = new String[] { "-R", "1" };
		remove.setOptions(opts);
		remove.setInputFormat(data);
		data = Filter.useFilter(data, remove);
		System.out.println(data.toString());
	}

	public void selectFeatures() throws Exception {
		InfoGainAttributeEval evaluator = new InfoGainAttributeEval();
		Ranker ranker = new Ranker();
		AttributeSelection attSelect = new AttributeSelection();
		attSelect.setEvaluator(evaluator);
		attSelect.setSearch(ranker);
		attSelect.SelectAttributes(data);
		int[] selectedAttributes = attSelect.selectedAttributes();
		System.out.println(Utils.arrayToString(selectedAttributes));
	}

	public void buildDecisionTree() throws Exception {
		tree = new J48();
		String[] options = new String[1];
		options[0] = "-U"; // un-pruned tree option
		tree.setOptions(options);
		tree.buildClassifier(data);
		System.out.println(tree.toString());
	}

	public void visualizeTree() throws Exception {
		TreeVisualizer tv = new TreeVisualizer(null, tree.graph(), new PlaceNode2());
		JFrame frame = new JFrame("Tree Visualizer");
		frame.setSize(3000, 3000);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().add(tv);
		frame.setVisible(true);
		tv.fitToScreen();
	}
	
	public String classifyData(double[] vals) throws Exception {
		Instance myUnicorn = new DenseInstance(1.0, vals);
		myUnicorn.setDataset(data);
		double result = tree.classifyInstance(myUnicorn);
		System.out.println(data.classAttribute().value((int) result));
		return data.classAttribute().value((int) result);
	}
	

	public void showErrorMetrics() throws Exception {
		Classifier c1 = new J48();
		Evaluation evalRoc = new Evaluation(data);
		evalRoc.crossValidateModel(c1, data, 15, new Random(1), new Object[] {});
		System.out.println(evalRoc.toSummaryString());
		System.out.println(evalRoc.toMatrixString());
	}
	public Classification() {
		
	}

	public static void main(String[] args) {
		try {
			// "C:\\Users\\Dell\\NewEclipseWorkSpace\\Exemple_classification\\ml-basic\\resources\\ENB2012_data.csv"
			// "C:\\Users\\Dell\\Desktop\\Studies\\S7\\JAVA\\mini_projet\\test\\Important data\\DataTrain\\DataTrain.csv"
			Classification weka = new Classification("/home/ismailyh/Desktop/Data_Linux_In_Shuffled.csv");
			//weka.removeFirstAttribute();
			weka.selectFeatures();
			weka.buildDecisionTree();
			//weka.visualizeTree();
			
			//Classifying:
			double[] vals = new double[data.numAttributes()];

			//double[] vals = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,0.0,0.0,0.0};
			//This below parametre are filled there
			/*vals[0] = 0.0;	//Symfony/Laravel/PHP {false, true}
			vals[1] = 1.0;	//Node/React/Vue./Angular/js {false, true}
			vals[2] = 0.0;	//BootStrap/HTML/CSS {false, true}
			vals[3] = 0.0;	//MongoDB/MariaDB/Oracle/SQL {false, true}
			vals[4] = 1.0;	//Hibernate/Spring/Java {false, true}
			vals[5] = 0.0;	//C++/C#/Api/ .net {false, true}
			
			vals[6] = 0.0;	//Bitbucket/Git {false, true}
			vals[7] = 1.0;	//Mesos/Kubernetes/Docker {false, true}
			vals[8] = 1.0;	//Puppet/terraform/ansible {false, true}
			vals[9] = 1.0;	//jenkins/chef {false, true}
			vals[10] = 0.0;	//Linux/Unix/Windows {false, true}
			
			vals[11] = 1.0;	//Scala/R/Python/Data {false, true}
			vals[12] = 0.0;	//BI/PowerBi {false, true}
			vals[13] = 1.0;	//Cloud/Cloudera/azure/gcp/aws/Azure {false, true}
			vals[14] = 0.0;	//Hadoop/Spark/Storm/Kafka/Nifi/Ranger/Hive {false, true}
			*/
			weka.showErrorMetrics();
			weka.classifyData(vals);
		} catch (Exception e) { 
			e.printStackTrace();
		}
	}
}
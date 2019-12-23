package patterns;

import java.io.Writer;

import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.CastExpression;
import org.eclipse.jdt.core.dom.LambdaExpression;
import org.eclipse.jdt.core.dom.Type;

public class LambdaExpressionVisitor extends AbstractVisitor
{
	
	public LambdaExpressionVisitor(Writer writer)
	{
		super(writer);
		System.out.println("####(in LambdaExpressionVisitor)Debug line#: " +
				new Exception().getStackTrace()[0].getLineNumber());
	}
	
	@Override
	public boolean visit(LambdaExpression lambda) 
	{
		System.out.println("####(Lambda expression visited)Debug line#: " +
				new Exception().getStackTrace()[0].getLineNumber());
		
		int lineNumber = Unit.getLineNumber(lambda.getStartPosition());
		String parent = GetEnclosingContainerName(lambda);
		
		if( parent != null )
		{
			WriteLine(lineNumber + ":" + parent);
			System.out.println(lineNumber + ":" + parent);
		}
		return true;
	}
}

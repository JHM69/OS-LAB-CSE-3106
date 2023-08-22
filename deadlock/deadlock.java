/*
 * $Log: deadlock.java,v $
 * Revision 1.2  2001/07/30 03:52:57  rayo
 * cleaned up usage message
 *
 */

import Kernel ;
import ControlPanel ;

public class deadlock
{

/**
This is main method that runs the application.  Any number of arguments may be
specified on the command line, but none are required.  The first
argument is the number of processes to create, while the subsequent
arguments are the number of each resource is initially available.
*/

  public static void main( String args[] )
  {
    ControlPanel controlPanel ;
    Kernel kernel ;

    kernel = new Kernel() ;

    if ( args.length == 0 )
    {
      System.out.println( "Usage: java deadlock <process-filename-prefix> <process-count> <resource-available-1> ... <resource-available-n>");
      System.exit( 0 ) ;
    }

    if ( args.length > 0 ) 
    {
      kernel.setProcessFilenamePrefix( args[0] ) ;
    }

    if ( args.length > 1 )
      try
      {
        kernel.setProcessCount( Integer.valueOf(args[1]).intValue() ) ;
      }
      catch (NumberFormatException e)
      {
        System.err.println( "Invalid number \"" + args[1] + "\" specified as process count");
        System.exit(0);
      }

    if ( args.length > 2 )
    {
      kernel.setResourceCount( args.length - 2 ) ;
      for( int i = 2 ; i < args.length ; i ++ )
        try
        {
          kernel.setResourceInitialAvailable( i - 2 , Integer.valueOf(args[i]).intValue() ) ;
        }
        catch (NumberFormatException e)
        {
          System.err.println( 
            "Invalid number \"" + args[i] + 
            "\" specified as count of available resources for resource " + 
            Integer.toString(i-2) + "." ) ;
          System.exit(0);
        }
    }

    kernel.start();
    controlPanel = new ControlPanel("deadlock");
    controlPanel.init(kernel);
  }
}

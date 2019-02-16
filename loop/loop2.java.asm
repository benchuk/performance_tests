javap -c -p loop2.class


Compiled from "loop2.java"
public class loop2 {
  public loop2();
    Code:
       0: aload_0
       1: invokespecial #1                  // Method java/lang/Object."<init>":()V
       4: return

  public static void main(java.lang.String[]);
    Code:
       0: ldc           #2                  // int 10000000
       2: newarray       int
       4: astore_1
       5: invokestatic  #3                  // Method java/lang/System.nanoTime:()J
       8: lstore_2
       9: iconst_0
      10: istore        4
      12: iload         4
      14: aload_1
      15: arraylength
      16: if_icmpge     31
      19: aload_1
      20: iload         4
      22: bipush        42
      24: iastore
      25: iinc          4, 1
      28: goto          12
      31: invokestatic  #3                  // Method java/lang/System.nanoTime:()J
      34: lstore        4
      36: lload         4
      38: lload_2
      39: lsub
      40: lstore        6
      42: getstatic     #4                  // Field java/lang/System.out:Ljava/io/PrintStream;
      45: new           #5                  // class java/lang/StringBuilder
      48: dup
      49: invokespecial #6                  // Method java/lang/StringBuilder."<init>":()V
      52: ldc           #7                  // String ms :
      54: invokevirtual #8                  // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
      57: lload         6
      59: ldc2_w        #9                  // long 1000000l
      62: ldiv
      63: invokevirtual #11                 // Method java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
      66: invokevirtual #12                 // Method java/lang/StringBuilder.toString:()Ljava/lang/String;
      69: invokevirtual #13                 // Method java/io/PrintStream.println:(Ljava/lang/String;)V
      72: getstatic     #4                  // Field java/lang/System.out:Ljava/io/PrintStream;
      75: new           #5                  // class java/lang/StringBuilder
      78: dup
      79: invokespecial #6                  // Method java/lang/StringBuilder."<init>":()V
      82: ldc           #14                 // String loops:
      84: invokevirtual #8                  // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
      87: aload_1
      88: arraylength
      89: invokevirtual #15                 // Method java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
      92: invokevirtual #12                 // Method java/lang/StringBuilder.toString:()Ljava/lang/String;
      95: invokevirtual #16                 // Method java/io/PrintStream.print:(Ljava/lang/String;)V
      98: getstatic     #4                  // Field java/lang/System.out:Ljava/io/PrintStream;
     101: new           #5                  // class java/lang/StringBuilder
     104: dup
     105: invokespecial #6                  // Method java/lang/StringBuilder."<init>":()V
     108: ldc           #17                 // String first element in array (should be 42):
     110: invokevirtual #8                  // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
     113: aload_1
     114: iconst_0
     115: iaload
     116: invokevirtual #15                 // Method java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
     119: invokevirtual #12                 // Method java/lang/StringBuilder.toString:()Ljava/lang/String;
     122: invokevirtual #16                 // Method java/io/PrintStream.print:(Ljava/lang/String;)V
     125: getstatic     #4                  // Field java/lang/System.out:Ljava/io/PrintStream;
     128: ldc           #18                 // String done
     130: invokevirtual #16                 // Method java/io/PrintStream.print:(Ljava/lang/String;)V
     133: return
}
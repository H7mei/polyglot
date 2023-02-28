import javax.swing.*;
import java.awt.*;

public class GUI {
    public static void main(String[] args) {
        // Create a new JFrame (window) with a title
        JFrame frame = new JFrame("Simple Window");

        // Set the size of the window
        frame.setSize(400, 300);

        // Set the default close operation
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // Create a button and add it to the frame
        JButton button = new JButton("Click me!");
        frame.add(button, BorderLayout.SOUTH);

        // Make the window visible
        frame.setVisible(true);
    }
}

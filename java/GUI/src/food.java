import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class food {
    private JList<String> foodList;
    private DefaultListModel<String> model;

    public static void main(String[] args) {
        // Create a new JFrame (window) with a title
        JFrame frame = new JFrame("Food List");

        // Set the size of the window
        frame.setSize(400, 300);

        // Set the default close operation
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // Create a list of food items
        String[] foods = {"Apple", "Banana", "Orange", "Strawberry"};

        // Create a DefaultListModel for the JList
        DefaultListModel<String> model = new DefaultListModel<>();
        for (String food : foods) {
            model.addElement(food);
        }

        // Create a JList to display the food items
        JList<String> foodList = new JList<>(model);

        // Allow single item selection
        foodList.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);

        // Add the JList to the center of the JFrame
        frame.add(foodList, BorderLayout.CENTER);

        // Create a panel for the buttons
        JPanel panel = new JPanel();

        // Create a "Add" button and add it to the panel
        JButton addButton = new JButton("Add");
        panel.add(addButton);

        // Create an "Remove" button and add it to the panel
        JButton removeButton = new JButton("Remove");
        panel.add(removeButton);

        // Create an "Clear" button and add it to the panel
        JButton clearButton = new JButton("Clear");
        panel.add(clearButton);

        // Create an "Random" button and add it to the panel
        JButton randomButton = new JButton("Random");
        panel.add(randomButton);

        // Add the panel to the JFrame
        frame.add(panel, BorderLayout.SOUTH);

        // Make the window visible
        frame.setVisible(true);

        // Add an action listener to the "Add" button
        addButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                // Show an input dialog to get the new food item
                String newFood = JOptionPane.showInputDialog("Enter a new food item:");

                // Add the new food item to the list
                model.addElement(newFood);
            }
        });

        // Add an action listener to the "Remove" button
        removeButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                // Get the selected index
                int selectedIndex = foodList.getSelectedIndex();

                // If an item is selected, remove it from the list
                if (selectedIndex != -1) {
                    model.remove(selectedIndex);
                }
            }
        });

        // Add an action listener to the "Clear" button
        clearButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                // Clear the list
                model.clear();
            }
        });

        // Add an action listener to the "Random" button
        randomButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                // make string random for food
                String[] randomFood = {"Apple", "Banana", "Orange", "Strawberry", "Can", "I"};

                // Add random food item to the list
                model.addElement(randomFood[(int) (Math.random() * randomFood.length)]);
            }
        });
    }
}

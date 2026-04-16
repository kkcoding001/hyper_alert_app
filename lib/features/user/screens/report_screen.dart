import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  int selectedIndex = -1;

  final List<String> options = [
    "False or misleading offer",
    "Inappropriate content",
    "Spam / scam",
    "Shop closed / info incorrect",
    "Other",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // important
      backgroundColor: const Color(0xFFEDEDED),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFEDEDED),
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Report Shop / Offer",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19,),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                "Tell us what's wrong so we can help.",
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 16),

              // Options list
              ...List.generate(options.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 14,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: selectedIndex == index
                              ? const Color(0xFF2EC4A6)
                              : Colors.grey.shade300,
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            selectedIndex == index
                                ? Icons.radio_button_checked
                                : Icons.radio_button_off,
                            color: const Color(0xFF2EC4A6),
                          ),
                          const SizedBox(width: 10),
                          Expanded(child: Text(options[index])),
                        ],
                      ),
                    ),
                  ),
                );
              }),

              const SizedBox(height: 12),

              // Show text field ONLY when "Other" selected
              if (selectedIndex == 4)
                Container(
                  height: 120,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFDCE3E5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: "Additional details (optional)",
                      border: InputBorder.none,
                    ),
                  ),
                ),

              const SizedBox(height: 20),

              // Submit button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedIndex == -1
                        ? Colors.grey
                        : const Color(0xFF2EC4A6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: selectedIndex == -1
                      ? null
                      : () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Report submitted successfully"),
                      ),
                    );
                  },
                  child: const Text(
                    "Submit Report",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
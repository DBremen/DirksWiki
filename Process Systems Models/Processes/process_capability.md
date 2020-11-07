# Process capability {#process-capability}

For discussion purposes, we will assign a customer diameter specification of 0.5 ± 0.005 to the machined parts of Figure 2.3\. The low specification is 0.495, and the high specification is 0.505.

A 1.33 capability ratio is the minimum required by most manufacturers and can easily be determined for the process using the following arithmetic:

Customer nominal = 0.5

Customer upper specification = 0.505

Customer lower specification = 0.495

Customer specification range is 0.01 total (0.505 – 0.495)

Process is centered at 0.5

Variation = 0.006 total (UCL – LCL; 0.503 – 0.497)

Diameter Capability Ratio = Total Specification/Total Variation

Diameter Capability Ratio = 0.01/0.006

Diameter Capability Ratio = 1.66

The process is stable and capable with regard to the product characteristic “diameter.”

Original idea originates from Ford quality manual for its suppliers:

**The lower and upper specifications were what Ford was willing to accept, not desirable but acceptable.**

*   Over the years, the suppliers had become accustomed to consuming the entire range of specification.
*   No process is safe from minor process average shifts due to occasional periods of instability.
*   Ford would receive under low and over high parts when a supplier’s process was consuming the entire range of specification and minor instability was experienced. Out-of-specification parts would result in rejects if found at incoming inspection and slowed production if found on the assembly line.
*   If a supplier was consuming less than the entire specification and a minor shift in the average due to instability, there would be a better chance that under low and over high specification product would not be produced and shipped to Ford.
*   Therefore, beginning with the publication of Ford Q101, all suppliers were required to demonstrate their capability of providing Ford with product that consumed no more than 75% of the agreed-on specification when the product average was centered at nominal.

**A process can be stable and yet not capable.**

The full range of samples selected randomly from a production run does not necessarily represent the full range of measurements that will be found if all the product were to be measured.

**Calculate total specification (range of variation) required to reach a capability rate of 1.33:**

CR =Total Specification/Total Product Variation

CR (1.33 minimum) x Total Product Variation = Total Specification

1.33 x 0.04 (UCL 0.57– LCL 0.53) = Total Specification

1.33 0.04 = 0.0532

0.0532 = Total Specification required to meet a 1.33 CR with the existing Total Product Variation.

**Capability Index (Cpk) versus Capability Ratio (CR)**

The Cpk is the same concept as the CR. The only difference is that we use Cpk when the product average is not the same as the customer nominal specification.

The arithmetic for CR develops one number such as 1.33 to describe the capability of the process. The arithmetic for Cpk develops two numbers:

*   The capability index for lower specification (CPL) describes the capability of the process in relation to the lower specification.
*   The capability index for upper specification (CPU) describes the capability of the process in relation to the upper specification.
*   One number, the lower number of CPL and CPU, is used to describe the capability of the process, and it is termed Cpk.

The question for management now becomes how to determine the Cpk when the average is not on nominal while maintaining the industry standard minimum Cpk of 1.33.

The answer is rather simple. Because the center of the normal curve will no longer be on the nominal, the distance between product average and the lower and upper specifications will no longer be equal. If the distances are not equal, we now have two numbers to describe the capability of the process. These numbers will take into account:

*   The customer’s lower specification, nominal, and upper specification
*   The product average
*   The amount of wall thickness variation about the product average

One number will describe the distance from the low end of the product variation to the lower specification, and the other number will describe the distance from the high end of the product variation to the upper specification. These numbers are called the CPL and the CPU.

Convention mandates that if either one of these two numbers is less than 1.33, we cannot call the process capable.

If management decided to change the SOP and place the wall thickness average at 0.26, the arithmetic to determine the CPL and the CPU would be as follows:

CPL = Product Average – Lower Specification ÷ ½ Total Variation

CPL = (0.26 – 0.255) ÷ ½ × (0.006)

CPL = 0.005 ÷ 0.003

CPL = 1.66

CPU = Upper Specification – Product Average ÷ ½ Total Variation

CPU = (0.285 – 0.260) ÷ ½ × (0.006)

CPU = 0.025 ÷ 0.003

CPU = 8.33

Generally speaking, product problems on the shop floor or at the customer or supplier fall into one of two categories. The problem can be one of instability or of incapability. Specifically, the problem exists because the product average has shifted or because the product has too much variation about a consistent average.

The purpose of a process capability study is to determine if the manufacturing process is stable and capable by measuring the critical product characteristic of interest. The product measurements are then used to develop a statistical product control chart. By analyzing the data patterns on the control chart, we determine if the process is stable. If the process is stable, we then use the data to determine a Cpk value in order to determine the degree of capability.

It is impossible to determine if a manufacturing process is stable if the measurement process used to measure the product is not stable. This is because an unstable measurement process will make a perfectly stable manufacturing process appear to be unstable. Unfortunately, unstable measurement processes in manufacturing are common.
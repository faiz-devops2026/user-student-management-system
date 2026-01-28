[33mcommit dfbe71214551a1803bd4cd4d77e223bf7d796b19[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m)[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Wed Jan 28 14:02:08 2026 +0530

    ngrok webhook final test

[33mcommit 225a1ab4cb462682b00b829d180216da2a1ac7db[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Wed Jan 28 13:42:31 2026 +0530

    webhook test

[33mcommit cd28310792da9df79dd82e40c416d5c0550ec82c[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Wed Jan 28 13:05:45 2026 +0530

    Remove liveness probe to fix CrashLoopBackOff in student service

[33mcommit 187d549cd9848c8627da4efcccaf363acab8e6d8[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Wed Jan 28 00:48:23 2026 +0530

    Move liveness and readiness probes to actuator port 8083

[33mcommit 3734fc9d78dcf5b97b10b1f9af39c0c68399806a[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Wed Jan 28 00:38:29 2026 +0530

    Fix student pod readiness issue by simplifying probes

[33mcommit 3b803ba4c8f5c4fbc152b5566bbc7cd56f9525a8[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Wed Jan 28 00:27:30 2026 +0530

    Final fix: actuator on separate port with env override

[33mcommit 723f4ec139c48134e988a85f78d64478e570c18b[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Wed Jan 28 00:17:07 2026 +0530

    Fix 403 by moving actuator to separate management port

[33mcommit d39ccd3feb6e0fb014a604099ecfd6e38f9bf7a3[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Wed Jan 28 00:05:14 2026 +0530

    Fix student liveness probe to actuator health

[33mcommit fd78914c704225c25f078e2eddcea220de61785a[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 23:54:36 2026 +0530

    Fix actuator 403 by adding dedicated security filter chain

[33mcommit e1bc92e3dc45fc86dad52437a7f41567cd4548c0[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 23:40:21 2026 +0530

    Fix K8s actuator probes, security config, and force image pull

[33mcommit d20179198759ef5cba19e0cb99ada5a1ca116597[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 23:04:05 2026 +0530

    Fix student-module security and actuator probes

[33mcommit f391b1fdcfda9743c5b7e6f1e5de366cc7cd5b16[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 22:50:06 2026 +0530

    Fix student-module security for Kubernetes probes

[33mcommit 57f4e264b0aa76912946ff4f83e208723519b38d[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 22:31:27 2026 +0530

    Fix student service Kubernetes probes and security

[33mcommit f00d79033ccfbf81c072e72405aa886905ffb169[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 22:12:53 2026 +0530

    Fix student-module security and actuator probes

[33mcommit 5d4ada9d6e247b83b8bce9b99d6afc35fd73147c[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 21:48:12 2026 +0530

    Align student-module security with auth-module for k8s

[33mcommit 4b5908ecd60de54f58ead7706f91d3278a913db7[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 20:47:53 2026 +0530

    Disable form login and sessions to allow actuator access

[33mcommit c8f73ba10b8fa15d405078693a54bd320f97338a[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 17:53:50 2026 +0530

    Fix actuator 403 by scoping security filter chains correctly

[33mcommit 28301eece33283cce66eecb90dd0f39ed2562d29[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 17:46:46 2026 +0530

    Finalize stable local CI/CD pipeline

[33mcommit e9d9dc89b0767b70e2943ef5ca0d571959aaed6f[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 17:34:55 2026 +0530

    Force Kubernetes to pull latest student image

[33mcommit 0eab383a7187b5361179c9f0495f8fdfcb647c91[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 17:22:26 2026 +0530

    Fix actuator access with separate security filter chains

[33mcommit 53e0e5fb8871e41e8077d82015f20d4f807eb874[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 17:10:36 2026 +0530

    Fix student Kubernetes health probes and readiness

[33mcommit d1e747ce81d401a1c7b21982b2fee5a50a40bc0c[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 16:48:19 2026 +0530

    Fix JWT filter to allow actuator health checks

[33mcommit 763f5509ff2737eec3955fed614e0cb050242b24[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 16:36:01 2026 +0530

    Exclude actuator endpoints from JWT filter for Kubernetes probes

[33mcommit 9dd12f3b21715cfbdaf60530f5fb44a3f87f7c99[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 15:50:20 2026 +0530

    Use Jenkins build number for Docker image versioning

[33mcommit 7e716dc3114ade8559dba997be5d16f0ef3c8379[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 11:37:30 2026 +0530

    Add k8s profile configuration for student service

[33mcommit f1f54e4a8e5393658ab46752d447f459fbd46240[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 11:22:43 2026 +0530

    Fix Jenkinsfile structure and Kubernetes auth

[33mcommit bfe9fc9ac8f4d20d289b16402be2fd221368cbbc[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 11:19:17 2026 +0530

    Update auth service configuration

[33mcommit 0d4bd604de6c9d07caec9cf107af33685ecbce21[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 11:14:03 2026 +0530

    Add Docker build stages to Jenkins pipeline

[33mcommit 18667e4dbc4549a3aa3de6dcb086314fac2b10ca[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 11:10:40 2026 +0530

    Add recommended student deployment with probes and resources

[33mcommit 34bde542dce6d63eb46f547706998d68bfbc024e[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Tue Jan 27 10:23:11 2026 +0530

    Add Docker build stages to Jenkins pipeline

[33mcommit 1d70a38590a98fc06d4203de9ef72eb75c7f3cb1[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Fri Jan 23 11:52:05 2026 +0530

    Add Jenkins CI pipeline

[33mcommit d868fb3d81dd70aa9fc70e118f4d41e698bb3dac[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Fri Jan 23 00:35:57 2026 +0530

    Update student-service configuration

[33mcommit 2d87bad6b3168ae866a2c63e2011883ce427a519[m
Author: Mohammad Faiz <faiz.techno22@gmail.com>
Date:   Thu Jan 22 23:00:22 2026 +0530

    Initial commit: auth, student services with k8s

This example showcases how to change the namespace of the generated Policies, Placements and other artifacts on a per-environment bases.  This allows you to manage changes to Policies for each environment to release Dev -> QA -> Prod.

### Key items in configuration
- The GitOps engine you use should point to the `environments/NAME` directory.  You would have a separate application for each environment.
- In the `environments/NAME/kustomization.yaml` file specify the namespace the generated policies should  be stored in using the `namespace: policies-dev` namespace transformer.
- There needs to be a `Namespace` object created outside of the generators for kustomize to properly execute the configuration.  This is included in the `policies/namespace.yml` file.  This will get updated to the correct namespace by kustomize and does not need to be managed per-environment.
- Policies that include dependencies and extraDependencies will include the namespace as specified in the `PolicyGenerator` defaults.  This is corrected by the nameReference transformer defined in `policies/kustomize-configs/namespace-namereference.yml`

Example outputs are available in the `outputs` directory for comparison.
CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes         num_elem   
   
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1     
   num_nod_per_el1       num_side_ss1      num_side_ss2      num_nod_ns1       num_nod_ns2       num_nod_var       num_elem_var      num_info  �         api_version       @�
=   version       @�
=   floating_point_word_size            	file_size               int64_status             title         time_derivative_nl_out.e       maximum_name_length                    
time_whole                            �,   	eb_status                             �   eb_prop1               name      ID              �   	ns_status         	                    �   ns_prop1      	         name      ID              �   	ss_status         
                    �   ss_prop1      
         name      ID              �   coordx                      X      �   coordy                      X      	   coordz                      X      	d   eb_names                       $      	�   ns_names      	                 D      	�   ss_names      
                 D      
$   
coor_names                         d      
h   node_num_map                    ,      
�   connect1                  	elem_type         EDGE2         P      
�   elem_num_map                    (      H   elem_ss1                          p   side_ss1                          t   elem_ss2                          x   side_ss2                          |   node_ns1                          �   node_ns2                          �   vals_nod_var1                          X      �4   vals_nod_var2                          X      ��   name_nod_var                       D      �   name_elem_var                          $      �   vals_elem_var1eb1                          P      ��   elem_var_tab                             �   info_records                      �8      �                                 �      �      �      �       ��              ?�      @       @      @      @                                                                                                                                                                                                                          left                             right                              right                            left                                                                                                                                                              	   
                                                   	   	   
   
                              	   
   
               c                                c_dot                              c_dot_elem �>�B�?h�                   ####################>�B�?h�                                                     # Created by MOOSE #                                                             ####################                                                             ### Command Line Arguments ###                                                   -i                                                                               time_derivative_nl.i                                                                                                                                              ### Version Info ###                                                             Framework Information:                                                           MOOSE version:           git commit e151cdd on 2015-08-18                        PETSc Version:           3.6.0                                                   Current Time:            Tue Aug 18 13:32:09 2015                                Executable Timestamp:    Tue Aug 18 13:31:33 2015                                                                                                                                                                                                  ### Input File ###                                                                                                                                                []                                                                                 name                           =                                                 block                          = INVALID                                         coord_type                     = XYZ                                             fe_cache                       = 0                                               kernel_coverage_check          = 1                                               material_coverage_check        = 1                                               rz_coord_axis                  = Y                                               type                           = FEProblem                                       use_legacy_uo_aux_computation  = INVALID                                         use_legacy_uo_initialization   = INVALID                                         element_order                  = AUTO                                            order                          = AUTO                                            side_order                     = AUTO                                            active_bcs                     = INVALID                                         active_kernels                 = INVALID                                         inactive_bcs                   = INVALID                                         inactive_kernels               = INVALID                                         start                          = 0                                               dimNearNullSpace               = 0                                               dimNullSpace                   = 0                                               error_on_jacobian_nonzero_reallocation = 0                                       petsc_inames                   =                                                 petsc_options                  = INVALID                                         petsc_values                   =                                                 solve                          = 1                                               use_nonlinear                  = 1                                             []                                                                                                                                                                [AuxKernels]                                                                                                                                                        [./coupled_dot]                                                                    name                         = AuxKernels/coupled_dot                            type                         = DotCouplingAux                                    block                        = INVALID                                           boundary                     = INVALID                                           execute_on                   = LINEAR                                            seed                         = 0                                                 use_displaced_mesh           = 0                                                 v                            = c                                                 variable                     = c_dot                                           [../]                                                                                                                                                             [./coupled_dot_elem]                                                               name                         = AuxKernels/coupled_dot_elem                       type                         = DotCouplingAux                                    block                        = INVALID                                           boundary                     = INVALID                                           execute_on                   = LINEAR                                            seed                         = 0                                                 use_displaced_mesh           = 0                                                 v                            = c                                                 variable                     = c_dot_elem                                      [../]                                                                          []                                                                                                                                                                [AuxVariables]                                                                                                                                                      [./c_dot]                                                                          block                        = INVALID                                           family                       = LAGRANGE                                          initial_condition            = INVALID                                           name                         = AuxVariables/c_dot                                order                        = FIRST                                             outputs                      = INVALID                                           initial_from_file_timestep   = 2                                                 initial_from_file_var        = INVALID                                         [../]                                                                                                                                                             [./c_dot_elem]                                                                     block                        = INVALID                                           family                       = MONOMIAL                                          initial_condition            = INVALID                                           name                         = AuxVariables/c_dot_elem                           order                        = CONSTANT                                          outputs                      = INVALID                                           initial_from_file_timestep   = 2                                                 initial_from_file_var        = INVALID                                         [../]                                                                          []                                                                                                                                                                [BCs]                                                                                                                                                               [./Periodic]                                                                       name                         = BCs/Periodic                                                                                                                       [./auto]                                                                           auto_direction             = x                                                   inv_transform_func         = INVALID                                             name                       = BCs/Periodic/auto                                   primary                    = INVALID                                             secondary                  = INVALID                                             transform_func             = INVALID                                             translation                = INVALID                                             variable                   = c                                                 [../]                                                                          [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      name                           = Executioner                                     type                           = Transient                                       compute_initial_residual_before_preset_bcs = 0                                   l_abs_step_tol                 = -1                                              l_max_its                      = 10000                                           l_tol                          = 1e-05                                           line_search                    = default                                         nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               petsc_options                  = INVALID                                         petsc_options_iname            = -PC_TYPE                                        petsc_options_value            = lu                                              solve_type                     = NEWTON                                          abort_on_solve_fail            = 0                                               dt                             = 0.1                                             dtmax                          = 1e+30                                           dtmin                          = 2e-14                                           end_time                       = 1e+30                                           n_startup_steps                = 0                                               num_steps                      = 5                                               picard_abs_tol                 = 1e-50                                           picard_max_its                 = 1                                               picard_rel_tol                 = 1e-08                                           predictor_scale                = INVALID                                         reset_dt                       = 0                                               restart_file_base              =                                                 scheme                         = INVALID                                         splitting                      = INVALID                                         ss_check_tol                   = 1e-08                                           ss_tmin                        = 0                                               start_time                     = 0                                               time_period_ends               = INVALID                                         time_period_starts             = INVALID                                         time_periods                   = INVALID                                         timestep_tolerance             = 2e-14                                           trans_ss_check                 = 0                                               use_multiapp_dt                = 0                                               verbose                        = 0                                             []                                                                                                                                                                [Executioner]                                                                      _fe_problem                    = 0x7fe845019600                                []                                                                                                                                                                [Functions]                                                                                                                                                         [./gaussian_1d]                                                                    name                         = Functions/gaussian_1d                             type                         = ParsedFunction                                    vals                         = INVALID                                           value                        = exp(-x*x/2.0/1.0/1.0)                             vars                         = INVALID                                         [../]                                                                          []                                                                                                                                                                [ICs]                                                                                                                                                               [./centered_gauss_func]                                                            name                         = ICs/centered_gauss_func                           type                         = FunctionIC                                        block                        = INVALID                                           boundary                     = INVALID                                           function                     = gaussian_1d                                       variable                     = c                                               [../]                                                                          []                                                                                                                                                                [Kernels]                                                                                                                                                           [./diff]                                                                           name                         = Kernels/diff                                      type                         = Diffusion                                         block                        = INVALID                                           diag_save_in                 = INVALID                                           implicit                     = 1                                                 save_in                      = INVALID                                           seed                         = 0                                                 use_displaced_mesh           = 0                                                 variable                     = c                                               [../]                                                                                                                                                             [./dot]                                                                            name                         = Kernels/dot                                       type                         = TimeDerivative                                    block                        = INVALID                                           diag_save_in                 = INVALID                                           implicit                     = 1                                                 lumping                      = 0                                                 save_in                      = INVALID                                           seed                         = 0                                                 use_displaced_mesh           = 0                                                 variable                     = c                                               [../]                                                                          []                                                                                                                                                                [Mesh]                                                                             displacements                  = INVALID                                         name                           = Mesh                                            block_id                       = INVALID                                         block_name                     = INVALID                                         boundary_id                    = INVALID                                         boundary_name                  = INVALID                                         construct_side_list_from_node_list = 0                                           ghosted_boundaries             = INVALID                                         ghosted_boundaries_inflation   = INVALID                                         patch_size                     = 40                                              second_order                   = 0                                               skip_partitioning              = 0                                               type                           = GeneratedMesh                                   uniform_refine                 = 0                                               centroid_partitioner_direction = INVALID                                         dim                            = 1                                               distribution                   = DEFAULT                                         elem_type                      = INVALID                                         nemesis                        = 0                                               nx                             = 10                                              ny                             = 1                                               nz                             = 1                                               partitioner                    = default                                         patch_update_strategy          = never                                           xmax                           = 5                                               xmin                           = -5                                              ymax                           = 1                                               ymin                           = 0                                               zmax                           = 1                                               zmin                           = 0                                             []                                                                                                                                                                [Outputs]                                                                          checkpoint                     = 0                                               color                          = 1                                               console                        = 1                                               csv                            = 0                                               dofmap                         = 0                                               exodus                         = 1                                               file_base                      = INVALID                                         gmv                            = 0                                               gnuplot                        = 0                                               hide                           = INVALID                                         interval                       = 1                                               name                           = Outputs                                         nemesis                        = 0                                               output_final                   = 0                                               output_if_base_contains        = INVALID                                         output_initial                 = 1                                               output_intermediate            = 1                                               output_on                      = 'INITIAL TIMESTEP_END'                          output_timestep_end            = 1                                               print_linear_residuals         = 1                                               print_mesh_changed_info        = 0                                               print_perf_log                 = 0                                               show                           = INVALID                                         solution_history               = 0                                               sync_times                     =                                                 tecplot                        = 0                                               vtk                            = 0                                               xda                            = 0                                               xdr                            = 0                                                                                                                                [./console]                                                                        name                         = Outputs/console                                   type                         = Console                                           additional_output_on         = INVALID                                           all_variable_norms           = 0                                                 append_displaced             = 0                                                 append_restart               = 0                                                 end_time                     = INVALID                                           file_base                    = INVALID                                           fit_mode                     = ENVIRONMENT                                       hide                         = INVALID                                           interval                     = 1                                                 linear_residual_dt_divisor   = 1000                                              linear_residual_end_time     = INVALID                                           linear_residual_start_time   = INVALID                                           linear_residuals             = 0                                                 max_rows                     = 15                                                nonlinear_residual_dt_divisor = 1000                                             nonlinear_residual_end_time  = INVALID                                           nonlinear_residual_start_time = INVALID                                          nonlinear_residuals          = 0                                                 outlier_multiplier           = '0.8 2'                                           outlier_variable_norms       = 1                                                 output_elemental_variables   = 1                                                 output_failed                = 0                                                 output_file                  = 0                                                 output_final                 = 0                                                 output_if_base_contains      =                                                   output_initial               = 1                                                 output_input                 = 1                                                 output_input_on              = INVALID                                           output_intermediate          = 1                                                 output_linear                = 0                                                 output_nodal_variables       = 1                                                 output_nonlinear             = 0                                                 output_on                    = 'FAILED NONLINEAR TIMESTEP_BEGIN TIMESTEP_... END'                                                                                 output_postprocessors        = 1                                                 output_postprocessors_on     = TIMESTEP_END                                      output_scalar_variables      = 1                                                 output_scalars_on            = TIMESTEP_END                                      output_screen                = 1                                                 output_system_information    = 1                                                 output_system_information_on = INITIAL                                           output_timestep_end          = 1                                                 output_vector_postprocessors = 1                                                 output_vector_postprocessors_on = TIMESTEP_END                                   padding                      = 4                                                 perf_header                  = INVALID                                           perf_log                     = 0                                                 print_mesh_changed_info      = 0                                                 scientific_time              = 0                                                 setup_log                    = INVALID                                           setup_log_early              = 0                                                 show                         = INVALID                                           show_multiapp_name           = 0                                                 solve_log                    = INVALID                                           start_time                   = INVALID                                           sync_only                    = 0                                                 sync_times                   =                                                   system_info                  = 'AUX EXECUTION FRAMEWORK MESH NONLINEAR'          time_precision               = INVALID                                           time_tolerance               = 1e-14                                             use_displaced                = 0                                                 verbose                      = 0                                               [../]                                                                                                                                                             [./exodus]                                                                         name                         = Outputs/exodus                                    type                         = Exodus                                            additional_output_on         = INVALID                                           append_displaced             = 0                                                 append_oversample            = 0                                                 elemental_as_nodal           = 0                                                 end_time                     = INVALID                                           file                         = INVALID                                           file_base                    = INVALID                                           hide                         = INVALID                                           interval                     = 1                                                 linear_residual_dt_divisor   = 1000                                              linear_residual_end_time     = INVALID                                           linear_residual_start_time   = INVALID                                           linear_residuals             = 0                                                 nonlinear_residual_dt_divisor = 1000                                             nonlinear_residual_end_time  = INVALID                                           nonlinear_residual_start_time = INVALID                                          nonlinear_residuals          = 0                                                 output_elemental_on          = INVALID                                           output_elemental_variables   = 1                                                 output_failed                = 0                                                 output_final                 = 0                                                 output_if_base_contains      =                                                   output_initial               = 1                                                 output_input                 = 1                                                 output_input_on              = INITIAL                                           output_intermediate          = 1                                                 output_linear                = 0                                                 output_material_properties   = 0                                                 output_nodal_on              = INVALID                                           output_nodal_variables       = 1                                                 output_nonlinear             = 0                                                 output_on                    = 'INITIAL TIMESTEP_END'                            output_postprocessors        = 1                                                 output_postprocessors_on     = INVALID                                           output_scalar_variables      = 1                                                 output_scalars_on            = INVALID                                           output_system_information    = 1                                                 output_timestep_end          = 1                                                 output_vector_postprocessors = 1                                                 oversample                   = 0                                                 padding                      = 3                                                 position                     = INVALID                                           refinements                  = 0                                                 scalar_as_nodal              = 0                                                 sequence                     = INVALID                                           show                         = INVALID                                           show_material_properties     = INVALID                                           start_time                   = INVALID                                           sync_only                    = 0                                                 sync_times                   =                                                   time_tolerance               = 1e-14                                             use_displaced                = 0                                               [../]                                                                          []                                                                                                                                                                [Variables]                                                                                                                                                         [./c]                                                                              block                        = INVALID                                           eigen                        = 0                                                 family                       = LAGRANGE                                          initial_condition            = INVALID                                           name                         = Variables/c                                       order                        = FIRST                                             outputs                      = INVALID                                           scaling                      = 1                                                 initial_from_file_timestep   = 2                                                 initial_from_file_var        = INVALID                                         [../]                                                                          []                                                                                          >�B�?h�?5�!'�?��PF��?�R�����?�h��o�
?�      ?�h��o�
?�R�����?��PF��?5�!'�>�B�?h�                                                                                                                                                                        ?�������>�;cJ�?I9o�.�?��]ߙ �?�f%�K?�>��z�?�����?�>��z�?�f%�J?��]ߙ �?I9o�.�>�;cJ�?�Q�sU^?q�7*p��?��V�L}?�ah��{�����1@���-���0�����1@?�ah��v?��V�L{?q�7*p��?�Q�sU^?b0LqJW)?����jU?���$�z�?��S �T��o����D��o����D?��S �O?���$�z�?����jU?b0LqJW*?ə������ލ�[s3�?`�[���,?�k.�?�gL4�?�禫jY�?���ֵ?�禫jY�?�gL4�?�k.�?`�[���,�ލ�[s3��+1ii��?�����?��P��2?�z�0B5��Ia:H0��B�� Ҿ��Ia:H0?�z�0B5?��P��0?������+1ii��?y�95B��?�$@	k{�?�F����?�dkE�`S�٫�(Ŀ٫�(�?�dkE�`S?�F����?�$@	k{�?y�95B��?�333334?�Q��?�?r��1�?��n�Nנ?͇&����?�{��sa?�^ޏx?�{��sa?͇&����?��n�Nן?r��1�?�Q��?�?Q�|�?�'���&?����?�Akn���ٓ������z̀b��ٓ���?�Akn��?����?�'���$?Q�|�?�Fw�ٮ�?��a���?Ȫ�({�y?�� ��9ѿ����%� �����%� ?�� ��9�?Ȫ�({�y?��a���?�Fw�ٮ�?ٙ�����?B��%��?�%��?���¦�?���{ߑ?��W]��?�Z_ڵ�?��W]��?���{ߐ?���¦�?�%��?B��%��?sڮ���?�~6��?�K�롅�?�A{V�r�� �3X)���8Y�_T�� �3X)�?�A{V�r?�K�롅�?�~6��?sڮ���?����Q>?����]r�?�F�|4,?����ȿ�k?�:
��k?�:
?�����?�F�|4,?����]r�?����Q>?�      ?Y�Ga�tZ?�܍��w|?���cW�p?������?�җ��?�m#��V�?�җ��?������?���cW�o?�܍��w{?Y�Ga�tZ?����.��?�$�H��h?��`�O:?¾YIٙҿ��?�(�،B&l����?�(?¾YIٙ�?��`�O7?�$�H��h?����.��?�Lm��[f?�?��o��?�:\�T?d�gs?u@���Ɩ��п��Ɩ���?d�gs?t ?�:\�T ?�?��o��?�Lm��[f
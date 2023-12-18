**************************************************
* OpenRAM generated memory.
* Words: 256
* Data bits: 32
* Banks: 1
* Column mux: 1:1
* Trimmed: False
* LVS: False
**************************************************

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

* spice ptx M{0} {1} pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

.SUBCKT sram_32b_256_1rw_freepdk45_pnand2
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpnand2_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_nmos1 Z B net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand2_nmos2 net1 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS sram_32b_256_1rw_freepdk45_pnand2

* spice ptx M{0} {1} pmos_vtg m=6 w=0.36u l=0.05u pd=0.82u ps=0.82u as=0.04p ad=0.04p

* spice ptx M{0} {1} nmos_vtg m=6 w=0.12u l=0.05u pd=0.34u ps=0.34u as=0.01p ad=0.01p

.SUBCKT sram_32b_256_1rw_freepdk45_pinv_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 8
Mpinv_pmos Z A vdd vdd pmos_vtg m=6 w=0.36u l=0.05u pd=0.82u ps=0.82u as=0.04p ad=0.04p
Mpinv_nmos Z A gnd gnd nmos_vtg m=6 w=0.12u l=0.05u pd=0.34u ps=0.34u as=0.01p ad=0.01p
.ENDS sram_32b_256_1rw_freepdk45_pinv_0

.SUBCKT sram_32b_256_1rw_freepdk45_wordline_driver
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* cols: 32
Xwld_nand
+ A B zb_int vdd gnd
+ sram_32b_256_1rw_freepdk45_pnand2
Xwl_driver
+ zb_int Z vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_0
.ENDS sram_32b_256_1rw_freepdk45_wordline_driver

.SUBCKT sram_32b_256_1rw_freepdk45_wordline_driver_array
+ in_0 in_1 in_2 in_3 in_4 in_5 in_6 in_7 in_8 in_9 in_10 in_11 in_12
+ in_13 in_14 in_15 in_16 in_17 in_18 in_19 in_20 in_21 in_22 in_23
+ in_24 in_25 in_26 in_27 in_28 in_29 in_30 in_31 in_32 in_33 in_34
+ in_35 in_36 in_37 in_38 in_39 in_40 in_41 in_42 in_43 in_44 in_45
+ in_46 in_47 in_48 in_49 in_50 in_51 in_52 in_53 in_54 in_55 in_56
+ in_57 in_58 in_59 in_60 in_61 in_62 in_63 in_64 in_65 in_66 in_67
+ in_68 in_69 in_70 in_71 in_72 in_73 in_74 in_75 in_76 in_77 in_78
+ in_79 in_80 in_81 in_82 in_83 in_84 in_85 in_86 in_87 in_88 in_89
+ in_90 in_91 in_92 in_93 in_94 in_95 in_96 in_97 in_98 in_99 in_100
+ in_101 in_102 in_103 in_104 in_105 in_106 in_107 in_108 in_109 in_110
+ in_111 in_112 in_113 in_114 in_115 in_116 in_117 in_118 in_119 in_120
+ in_121 in_122 in_123 in_124 in_125 in_126 in_127 in_128 in_129 in_130
+ in_131 in_132 in_133 in_134 in_135 in_136 in_137 in_138 in_139 in_140
+ in_141 in_142 in_143 in_144 in_145 in_146 in_147 in_148 in_149 in_150
+ in_151 in_152 in_153 in_154 in_155 in_156 in_157 in_158 in_159 in_160
+ in_161 in_162 in_163 in_164 in_165 in_166 in_167 in_168 in_169 in_170
+ in_171 in_172 in_173 in_174 in_175 in_176 in_177 in_178 in_179 in_180
+ in_181 in_182 in_183 in_184 in_185 in_186 in_187 in_188 in_189 in_190
+ in_191 in_192 in_193 in_194 in_195 in_196 in_197 in_198 in_199 in_200
+ in_201 in_202 in_203 in_204 in_205 in_206 in_207 in_208 in_209 in_210
+ in_211 in_212 in_213 in_214 in_215 in_216 in_217 in_218 in_219 in_220
+ in_221 in_222 in_223 in_224 in_225 in_226 in_227 in_228 in_229 in_230
+ in_231 in_232 in_233 in_234 in_235 in_236 in_237 in_238 in_239 in_240
+ in_241 in_242 in_243 in_244 in_245 in_246 in_247 in_248 in_249 in_250
+ in_251 in_252 in_253 in_254 in_255 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6
+ wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18
+ wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29
+ wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38 wl_39 wl_40
+ wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49 wl_50 wl_51
+ wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60 wl_61 wl_62
+ wl_63 wl_64 wl_65 wl_66 wl_67 wl_68 wl_69 wl_70 wl_71 wl_72 wl_73
+ wl_74 wl_75 wl_76 wl_77 wl_78 wl_79 wl_80 wl_81 wl_82 wl_83 wl_84
+ wl_85 wl_86 wl_87 wl_88 wl_89 wl_90 wl_91 wl_92 wl_93 wl_94 wl_95
+ wl_96 wl_97 wl_98 wl_99 wl_100 wl_101 wl_102 wl_103 wl_104 wl_105
+ wl_106 wl_107 wl_108 wl_109 wl_110 wl_111 wl_112 wl_113 wl_114 wl_115
+ wl_116 wl_117 wl_118 wl_119 wl_120 wl_121 wl_122 wl_123 wl_124 wl_125
+ wl_126 wl_127 wl_128 wl_129 wl_130 wl_131 wl_132 wl_133 wl_134 wl_135
+ wl_136 wl_137 wl_138 wl_139 wl_140 wl_141 wl_142 wl_143 wl_144 wl_145
+ wl_146 wl_147 wl_148 wl_149 wl_150 wl_151 wl_152 wl_153 wl_154 wl_155
+ wl_156 wl_157 wl_158 wl_159 wl_160 wl_161 wl_162 wl_163 wl_164 wl_165
+ wl_166 wl_167 wl_168 wl_169 wl_170 wl_171 wl_172 wl_173 wl_174 wl_175
+ wl_176 wl_177 wl_178 wl_179 wl_180 wl_181 wl_182 wl_183 wl_184 wl_185
+ wl_186 wl_187 wl_188 wl_189 wl_190 wl_191 wl_192 wl_193 wl_194 wl_195
+ wl_196 wl_197 wl_198 wl_199 wl_200 wl_201 wl_202 wl_203 wl_204 wl_205
+ wl_206 wl_207 wl_208 wl_209 wl_210 wl_211 wl_212 wl_213 wl_214 wl_215
+ wl_216 wl_217 wl_218 wl_219 wl_220 wl_221 wl_222 wl_223 wl_224 wl_225
+ wl_226 wl_227 wl_228 wl_229 wl_230 wl_231 wl_232 wl_233 wl_234 wl_235
+ wl_236 wl_237 wl_238 wl_239 wl_240 wl_241 wl_242 wl_243 wl_244 wl_245
+ wl_246 wl_247 wl_248 wl_249 wl_250 wl_251 wl_252 wl_253 wl_254 wl_255
+ en vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* INPUT : in_2 
* INPUT : in_3 
* INPUT : in_4 
* INPUT : in_5 
* INPUT : in_6 
* INPUT : in_7 
* INPUT : in_8 
* INPUT : in_9 
* INPUT : in_10 
* INPUT : in_11 
* INPUT : in_12 
* INPUT : in_13 
* INPUT : in_14 
* INPUT : in_15 
* INPUT : in_16 
* INPUT : in_17 
* INPUT : in_18 
* INPUT : in_19 
* INPUT : in_20 
* INPUT : in_21 
* INPUT : in_22 
* INPUT : in_23 
* INPUT : in_24 
* INPUT : in_25 
* INPUT : in_26 
* INPUT : in_27 
* INPUT : in_28 
* INPUT : in_29 
* INPUT : in_30 
* INPUT : in_31 
* INPUT : in_32 
* INPUT : in_33 
* INPUT : in_34 
* INPUT : in_35 
* INPUT : in_36 
* INPUT : in_37 
* INPUT : in_38 
* INPUT : in_39 
* INPUT : in_40 
* INPUT : in_41 
* INPUT : in_42 
* INPUT : in_43 
* INPUT : in_44 
* INPUT : in_45 
* INPUT : in_46 
* INPUT : in_47 
* INPUT : in_48 
* INPUT : in_49 
* INPUT : in_50 
* INPUT : in_51 
* INPUT : in_52 
* INPUT : in_53 
* INPUT : in_54 
* INPUT : in_55 
* INPUT : in_56 
* INPUT : in_57 
* INPUT : in_58 
* INPUT : in_59 
* INPUT : in_60 
* INPUT : in_61 
* INPUT : in_62 
* INPUT : in_63 
* INPUT : in_64 
* INPUT : in_65 
* INPUT : in_66 
* INPUT : in_67 
* INPUT : in_68 
* INPUT : in_69 
* INPUT : in_70 
* INPUT : in_71 
* INPUT : in_72 
* INPUT : in_73 
* INPUT : in_74 
* INPUT : in_75 
* INPUT : in_76 
* INPUT : in_77 
* INPUT : in_78 
* INPUT : in_79 
* INPUT : in_80 
* INPUT : in_81 
* INPUT : in_82 
* INPUT : in_83 
* INPUT : in_84 
* INPUT : in_85 
* INPUT : in_86 
* INPUT : in_87 
* INPUT : in_88 
* INPUT : in_89 
* INPUT : in_90 
* INPUT : in_91 
* INPUT : in_92 
* INPUT : in_93 
* INPUT : in_94 
* INPUT : in_95 
* INPUT : in_96 
* INPUT : in_97 
* INPUT : in_98 
* INPUT : in_99 
* INPUT : in_100 
* INPUT : in_101 
* INPUT : in_102 
* INPUT : in_103 
* INPUT : in_104 
* INPUT : in_105 
* INPUT : in_106 
* INPUT : in_107 
* INPUT : in_108 
* INPUT : in_109 
* INPUT : in_110 
* INPUT : in_111 
* INPUT : in_112 
* INPUT : in_113 
* INPUT : in_114 
* INPUT : in_115 
* INPUT : in_116 
* INPUT : in_117 
* INPUT : in_118 
* INPUT : in_119 
* INPUT : in_120 
* INPUT : in_121 
* INPUT : in_122 
* INPUT : in_123 
* INPUT : in_124 
* INPUT : in_125 
* INPUT : in_126 
* INPUT : in_127 
* INPUT : in_128 
* INPUT : in_129 
* INPUT : in_130 
* INPUT : in_131 
* INPUT : in_132 
* INPUT : in_133 
* INPUT : in_134 
* INPUT : in_135 
* INPUT : in_136 
* INPUT : in_137 
* INPUT : in_138 
* INPUT : in_139 
* INPUT : in_140 
* INPUT : in_141 
* INPUT : in_142 
* INPUT : in_143 
* INPUT : in_144 
* INPUT : in_145 
* INPUT : in_146 
* INPUT : in_147 
* INPUT : in_148 
* INPUT : in_149 
* INPUT : in_150 
* INPUT : in_151 
* INPUT : in_152 
* INPUT : in_153 
* INPUT : in_154 
* INPUT : in_155 
* INPUT : in_156 
* INPUT : in_157 
* INPUT : in_158 
* INPUT : in_159 
* INPUT : in_160 
* INPUT : in_161 
* INPUT : in_162 
* INPUT : in_163 
* INPUT : in_164 
* INPUT : in_165 
* INPUT : in_166 
* INPUT : in_167 
* INPUT : in_168 
* INPUT : in_169 
* INPUT : in_170 
* INPUT : in_171 
* INPUT : in_172 
* INPUT : in_173 
* INPUT : in_174 
* INPUT : in_175 
* INPUT : in_176 
* INPUT : in_177 
* INPUT : in_178 
* INPUT : in_179 
* INPUT : in_180 
* INPUT : in_181 
* INPUT : in_182 
* INPUT : in_183 
* INPUT : in_184 
* INPUT : in_185 
* INPUT : in_186 
* INPUT : in_187 
* INPUT : in_188 
* INPUT : in_189 
* INPUT : in_190 
* INPUT : in_191 
* INPUT : in_192 
* INPUT : in_193 
* INPUT : in_194 
* INPUT : in_195 
* INPUT : in_196 
* INPUT : in_197 
* INPUT : in_198 
* INPUT : in_199 
* INPUT : in_200 
* INPUT : in_201 
* INPUT : in_202 
* INPUT : in_203 
* INPUT : in_204 
* INPUT : in_205 
* INPUT : in_206 
* INPUT : in_207 
* INPUT : in_208 
* INPUT : in_209 
* INPUT : in_210 
* INPUT : in_211 
* INPUT : in_212 
* INPUT : in_213 
* INPUT : in_214 
* INPUT : in_215 
* INPUT : in_216 
* INPUT : in_217 
* INPUT : in_218 
* INPUT : in_219 
* INPUT : in_220 
* INPUT : in_221 
* INPUT : in_222 
* INPUT : in_223 
* INPUT : in_224 
* INPUT : in_225 
* INPUT : in_226 
* INPUT : in_227 
* INPUT : in_228 
* INPUT : in_229 
* INPUT : in_230 
* INPUT : in_231 
* INPUT : in_232 
* INPUT : in_233 
* INPUT : in_234 
* INPUT : in_235 
* INPUT : in_236 
* INPUT : in_237 
* INPUT : in_238 
* INPUT : in_239 
* INPUT : in_240 
* INPUT : in_241 
* INPUT : in_242 
* INPUT : in_243 
* INPUT : in_244 
* INPUT : in_245 
* INPUT : in_246 
* INPUT : in_247 
* INPUT : in_248 
* INPUT : in_249 
* INPUT : in_250 
* INPUT : in_251 
* INPUT : in_252 
* INPUT : in_253 
* INPUT : in_254 
* INPUT : in_255 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* OUTPUT: wl_16 
* OUTPUT: wl_17 
* OUTPUT: wl_18 
* OUTPUT: wl_19 
* OUTPUT: wl_20 
* OUTPUT: wl_21 
* OUTPUT: wl_22 
* OUTPUT: wl_23 
* OUTPUT: wl_24 
* OUTPUT: wl_25 
* OUTPUT: wl_26 
* OUTPUT: wl_27 
* OUTPUT: wl_28 
* OUTPUT: wl_29 
* OUTPUT: wl_30 
* OUTPUT: wl_31 
* OUTPUT: wl_32 
* OUTPUT: wl_33 
* OUTPUT: wl_34 
* OUTPUT: wl_35 
* OUTPUT: wl_36 
* OUTPUT: wl_37 
* OUTPUT: wl_38 
* OUTPUT: wl_39 
* OUTPUT: wl_40 
* OUTPUT: wl_41 
* OUTPUT: wl_42 
* OUTPUT: wl_43 
* OUTPUT: wl_44 
* OUTPUT: wl_45 
* OUTPUT: wl_46 
* OUTPUT: wl_47 
* OUTPUT: wl_48 
* OUTPUT: wl_49 
* OUTPUT: wl_50 
* OUTPUT: wl_51 
* OUTPUT: wl_52 
* OUTPUT: wl_53 
* OUTPUT: wl_54 
* OUTPUT: wl_55 
* OUTPUT: wl_56 
* OUTPUT: wl_57 
* OUTPUT: wl_58 
* OUTPUT: wl_59 
* OUTPUT: wl_60 
* OUTPUT: wl_61 
* OUTPUT: wl_62 
* OUTPUT: wl_63 
* OUTPUT: wl_64 
* OUTPUT: wl_65 
* OUTPUT: wl_66 
* OUTPUT: wl_67 
* OUTPUT: wl_68 
* OUTPUT: wl_69 
* OUTPUT: wl_70 
* OUTPUT: wl_71 
* OUTPUT: wl_72 
* OUTPUT: wl_73 
* OUTPUT: wl_74 
* OUTPUT: wl_75 
* OUTPUT: wl_76 
* OUTPUT: wl_77 
* OUTPUT: wl_78 
* OUTPUT: wl_79 
* OUTPUT: wl_80 
* OUTPUT: wl_81 
* OUTPUT: wl_82 
* OUTPUT: wl_83 
* OUTPUT: wl_84 
* OUTPUT: wl_85 
* OUTPUT: wl_86 
* OUTPUT: wl_87 
* OUTPUT: wl_88 
* OUTPUT: wl_89 
* OUTPUT: wl_90 
* OUTPUT: wl_91 
* OUTPUT: wl_92 
* OUTPUT: wl_93 
* OUTPUT: wl_94 
* OUTPUT: wl_95 
* OUTPUT: wl_96 
* OUTPUT: wl_97 
* OUTPUT: wl_98 
* OUTPUT: wl_99 
* OUTPUT: wl_100 
* OUTPUT: wl_101 
* OUTPUT: wl_102 
* OUTPUT: wl_103 
* OUTPUT: wl_104 
* OUTPUT: wl_105 
* OUTPUT: wl_106 
* OUTPUT: wl_107 
* OUTPUT: wl_108 
* OUTPUT: wl_109 
* OUTPUT: wl_110 
* OUTPUT: wl_111 
* OUTPUT: wl_112 
* OUTPUT: wl_113 
* OUTPUT: wl_114 
* OUTPUT: wl_115 
* OUTPUT: wl_116 
* OUTPUT: wl_117 
* OUTPUT: wl_118 
* OUTPUT: wl_119 
* OUTPUT: wl_120 
* OUTPUT: wl_121 
* OUTPUT: wl_122 
* OUTPUT: wl_123 
* OUTPUT: wl_124 
* OUTPUT: wl_125 
* OUTPUT: wl_126 
* OUTPUT: wl_127 
* OUTPUT: wl_128 
* OUTPUT: wl_129 
* OUTPUT: wl_130 
* OUTPUT: wl_131 
* OUTPUT: wl_132 
* OUTPUT: wl_133 
* OUTPUT: wl_134 
* OUTPUT: wl_135 
* OUTPUT: wl_136 
* OUTPUT: wl_137 
* OUTPUT: wl_138 
* OUTPUT: wl_139 
* OUTPUT: wl_140 
* OUTPUT: wl_141 
* OUTPUT: wl_142 
* OUTPUT: wl_143 
* OUTPUT: wl_144 
* OUTPUT: wl_145 
* OUTPUT: wl_146 
* OUTPUT: wl_147 
* OUTPUT: wl_148 
* OUTPUT: wl_149 
* OUTPUT: wl_150 
* OUTPUT: wl_151 
* OUTPUT: wl_152 
* OUTPUT: wl_153 
* OUTPUT: wl_154 
* OUTPUT: wl_155 
* OUTPUT: wl_156 
* OUTPUT: wl_157 
* OUTPUT: wl_158 
* OUTPUT: wl_159 
* OUTPUT: wl_160 
* OUTPUT: wl_161 
* OUTPUT: wl_162 
* OUTPUT: wl_163 
* OUTPUT: wl_164 
* OUTPUT: wl_165 
* OUTPUT: wl_166 
* OUTPUT: wl_167 
* OUTPUT: wl_168 
* OUTPUT: wl_169 
* OUTPUT: wl_170 
* OUTPUT: wl_171 
* OUTPUT: wl_172 
* OUTPUT: wl_173 
* OUTPUT: wl_174 
* OUTPUT: wl_175 
* OUTPUT: wl_176 
* OUTPUT: wl_177 
* OUTPUT: wl_178 
* OUTPUT: wl_179 
* OUTPUT: wl_180 
* OUTPUT: wl_181 
* OUTPUT: wl_182 
* OUTPUT: wl_183 
* OUTPUT: wl_184 
* OUTPUT: wl_185 
* OUTPUT: wl_186 
* OUTPUT: wl_187 
* OUTPUT: wl_188 
* OUTPUT: wl_189 
* OUTPUT: wl_190 
* OUTPUT: wl_191 
* OUTPUT: wl_192 
* OUTPUT: wl_193 
* OUTPUT: wl_194 
* OUTPUT: wl_195 
* OUTPUT: wl_196 
* OUTPUT: wl_197 
* OUTPUT: wl_198 
* OUTPUT: wl_199 
* OUTPUT: wl_200 
* OUTPUT: wl_201 
* OUTPUT: wl_202 
* OUTPUT: wl_203 
* OUTPUT: wl_204 
* OUTPUT: wl_205 
* OUTPUT: wl_206 
* OUTPUT: wl_207 
* OUTPUT: wl_208 
* OUTPUT: wl_209 
* OUTPUT: wl_210 
* OUTPUT: wl_211 
* OUTPUT: wl_212 
* OUTPUT: wl_213 
* OUTPUT: wl_214 
* OUTPUT: wl_215 
* OUTPUT: wl_216 
* OUTPUT: wl_217 
* OUTPUT: wl_218 
* OUTPUT: wl_219 
* OUTPUT: wl_220 
* OUTPUT: wl_221 
* OUTPUT: wl_222 
* OUTPUT: wl_223 
* OUTPUT: wl_224 
* OUTPUT: wl_225 
* OUTPUT: wl_226 
* OUTPUT: wl_227 
* OUTPUT: wl_228 
* OUTPUT: wl_229 
* OUTPUT: wl_230 
* OUTPUT: wl_231 
* OUTPUT: wl_232 
* OUTPUT: wl_233 
* OUTPUT: wl_234 
* OUTPUT: wl_235 
* OUTPUT: wl_236 
* OUTPUT: wl_237 
* OUTPUT: wl_238 
* OUTPUT: wl_239 
* OUTPUT: wl_240 
* OUTPUT: wl_241 
* OUTPUT: wl_242 
* OUTPUT: wl_243 
* OUTPUT: wl_244 
* OUTPUT: wl_245 
* OUTPUT: wl_246 
* OUTPUT: wl_247 
* OUTPUT: wl_248 
* OUTPUT: wl_249 
* OUTPUT: wl_250 
* OUTPUT: wl_251 
* OUTPUT: wl_252 
* OUTPUT: wl_253 
* OUTPUT: wl_254 
* OUTPUT: wl_255 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* rows: 256 cols: 32
Xwl_driver_and0
+ in_0 en wl_0 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and1
+ in_1 en wl_1 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and2
+ in_2 en wl_2 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and3
+ in_3 en wl_3 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and4
+ in_4 en wl_4 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and5
+ in_5 en wl_5 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and6
+ in_6 en wl_6 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and7
+ in_7 en wl_7 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and8
+ in_8 en wl_8 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and9
+ in_9 en wl_9 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and10
+ in_10 en wl_10 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and11
+ in_11 en wl_11 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and12
+ in_12 en wl_12 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and13
+ in_13 en wl_13 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and14
+ in_14 en wl_14 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and15
+ in_15 en wl_15 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and16
+ in_16 en wl_16 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and17
+ in_17 en wl_17 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and18
+ in_18 en wl_18 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and19
+ in_19 en wl_19 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and20
+ in_20 en wl_20 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and21
+ in_21 en wl_21 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and22
+ in_22 en wl_22 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and23
+ in_23 en wl_23 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and24
+ in_24 en wl_24 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and25
+ in_25 en wl_25 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and26
+ in_26 en wl_26 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and27
+ in_27 en wl_27 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and28
+ in_28 en wl_28 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and29
+ in_29 en wl_29 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and30
+ in_30 en wl_30 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and31
+ in_31 en wl_31 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and32
+ in_32 en wl_32 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and33
+ in_33 en wl_33 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and34
+ in_34 en wl_34 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and35
+ in_35 en wl_35 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and36
+ in_36 en wl_36 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and37
+ in_37 en wl_37 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and38
+ in_38 en wl_38 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and39
+ in_39 en wl_39 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and40
+ in_40 en wl_40 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and41
+ in_41 en wl_41 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and42
+ in_42 en wl_42 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and43
+ in_43 en wl_43 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and44
+ in_44 en wl_44 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and45
+ in_45 en wl_45 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and46
+ in_46 en wl_46 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and47
+ in_47 en wl_47 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and48
+ in_48 en wl_48 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and49
+ in_49 en wl_49 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and50
+ in_50 en wl_50 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and51
+ in_51 en wl_51 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and52
+ in_52 en wl_52 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and53
+ in_53 en wl_53 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and54
+ in_54 en wl_54 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and55
+ in_55 en wl_55 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and56
+ in_56 en wl_56 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and57
+ in_57 en wl_57 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and58
+ in_58 en wl_58 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and59
+ in_59 en wl_59 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and60
+ in_60 en wl_60 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and61
+ in_61 en wl_61 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and62
+ in_62 en wl_62 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and63
+ in_63 en wl_63 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and64
+ in_64 en wl_64 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and65
+ in_65 en wl_65 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and66
+ in_66 en wl_66 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and67
+ in_67 en wl_67 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and68
+ in_68 en wl_68 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and69
+ in_69 en wl_69 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and70
+ in_70 en wl_70 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and71
+ in_71 en wl_71 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and72
+ in_72 en wl_72 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and73
+ in_73 en wl_73 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and74
+ in_74 en wl_74 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and75
+ in_75 en wl_75 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and76
+ in_76 en wl_76 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and77
+ in_77 en wl_77 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and78
+ in_78 en wl_78 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and79
+ in_79 en wl_79 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and80
+ in_80 en wl_80 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and81
+ in_81 en wl_81 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and82
+ in_82 en wl_82 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and83
+ in_83 en wl_83 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and84
+ in_84 en wl_84 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and85
+ in_85 en wl_85 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and86
+ in_86 en wl_86 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and87
+ in_87 en wl_87 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and88
+ in_88 en wl_88 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and89
+ in_89 en wl_89 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and90
+ in_90 en wl_90 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and91
+ in_91 en wl_91 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and92
+ in_92 en wl_92 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and93
+ in_93 en wl_93 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and94
+ in_94 en wl_94 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and95
+ in_95 en wl_95 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and96
+ in_96 en wl_96 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and97
+ in_97 en wl_97 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and98
+ in_98 en wl_98 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and99
+ in_99 en wl_99 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and100
+ in_100 en wl_100 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and101
+ in_101 en wl_101 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and102
+ in_102 en wl_102 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and103
+ in_103 en wl_103 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and104
+ in_104 en wl_104 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and105
+ in_105 en wl_105 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and106
+ in_106 en wl_106 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and107
+ in_107 en wl_107 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and108
+ in_108 en wl_108 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and109
+ in_109 en wl_109 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and110
+ in_110 en wl_110 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and111
+ in_111 en wl_111 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and112
+ in_112 en wl_112 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and113
+ in_113 en wl_113 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and114
+ in_114 en wl_114 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and115
+ in_115 en wl_115 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and116
+ in_116 en wl_116 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and117
+ in_117 en wl_117 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and118
+ in_118 en wl_118 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and119
+ in_119 en wl_119 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and120
+ in_120 en wl_120 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and121
+ in_121 en wl_121 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and122
+ in_122 en wl_122 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and123
+ in_123 en wl_123 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and124
+ in_124 en wl_124 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and125
+ in_125 en wl_125 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and126
+ in_126 en wl_126 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and127
+ in_127 en wl_127 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and128
+ in_128 en wl_128 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and129
+ in_129 en wl_129 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and130
+ in_130 en wl_130 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and131
+ in_131 en wl_131 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and132
+ in_132 en wl_132 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and133
+ in_133 en wl_133 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and134
+ in_134 en wl_134 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and135
+ in_135 en wl_135 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and136
+ in_136 en wl_136 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and137
+ in_137 en wl_137 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and138
+ in_138 en wl_138 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and139
+ in_139 en wl_139 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and140
+ in_140 en wl_140 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and141
+ in_141 en wl_141 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and142
+ in_142 en wl_142 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and143
+ in_143 en wl_143 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and144
+ in_144 en wl_144 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and145
+ in_145 en wl_145 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and146
+ in_146 en wl_146 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and147
+ in_147 en wl_147 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and148
+ in_148 en wl_148 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and149
+ in_149 en wl_149 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and150
+ in_150 en wl_150 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and151
+ in_151 en wl_151 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and152
+ in_152 en wl_152 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and153
+ in_153 en wl_153 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and154
+ in_154 en wl_154 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and155
+ in_155 en wl_155 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and156
+ in_156 en wl_156 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and157
+ in_157 en wl_157 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and158
+ in_158 en wl_158 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and159
+ in_159 en wl_159 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and160
+ in_160 en wl_160 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and161
+ in_161 en wl_161 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and162
+ in_162 en wl_162 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and163
+ in_163 en wl_163 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and164
+ in_164 en wl_164 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and165
+ in_165 en wl_165 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and166
+ in_166 en wl_166 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and167
+ in_167 en wl_167 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and168
+ in_168 en wl_168 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and169
+ in_169 en wl_169 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and170
+ in_170 en wl_170 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and171
+ in_171 en wl_171 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and172
+ in_172 en wl_172 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and173
+ in_173 en wl_173 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and174
+ in_174 en wl_174 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and175
+ in_175 en wl_175 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and176
+ in_176 en wl_176 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and177
+ in_177 en wl_177 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and178
+ in_178 en wl_178 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and179
+ in_179 en wl_179 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and180
+ in_180 en wl_180 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and181
+ in_181 en wl_181 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and182
+ in_182 en wl_182 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and183
+ in_183 en wl_183 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and184
+ in_184 en wl_184 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and185
+ in_185 en wl_185 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and186
+ in_186 en wl_186 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and187
+ in_187 en wl_187 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and188
+ in_188 en wl_188 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and189
+ in_189 en wl_189 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and190
+ in_190 en wl_190 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and191
+ in_191 en wl_191 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and192
+ in_192 en wl_192 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and193
+ in_193 en wl_193 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and194
+ in_194 en wl_194 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and195
+ in_195 en wl_195 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and196
+ in_196 en wl_196 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and197
+ in_197 en wl_197 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and198
+ in_198 en wl_198 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and199
+ in_199 en wl_199 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and200
+ in_200 en wl_200 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and201
+ in_201 en wl_201 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and202
+ in_202 en wl_202 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and203
+ in_203 en wl_203 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and204
+ in_204 en wl_204 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and205
+ in_205 en wl_205 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and206
+ in_206 en wl_206 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and207
+ in_207 en wl_207 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and208
+ in_208 en wl_208 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and209
+ in_209 en wl_209 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and210
+ in_210 en wl_210 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and211
+ in_211 en wl_211 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and212
+ in_212 en wl_212 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and213
+ in_213 en wl_213 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and214
+ in_214 en wl_214 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and215
+ in_215 en wl_215 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and216
+ in_216 en wl_216 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and217
+ in_217 en wl_217 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and218
+ in_218 en wl_218 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and219
+ in_219 en wl_219 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and220
+ in_220 en wl_220 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and221
+ in_221 en wl_221 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and222
+ in_222 en wl_222 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and223
+ in_223 en wl_223 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and224
+ in_224 en wl_224 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and225
+ in_225 en wl_225 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and226
+ in_226 en wl_226 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and227
+ in_227 en wl_227 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and228
+ in_228 en wl_228 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and229
+ in_229 en wl_229 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and230
+ in_230 en wl_230 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and231
+ in_231 en wl_231 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and232
+ in_232 en wl_232 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and233
+ in_233 en wl_233 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and234
+ in_234 en wl_234 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and235
+ in_235 en wl_235 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and236
+ in_236 en wl_236 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and237
+ in_237 en wl_237 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and238
+ in_238 en wl_238 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and239
+ in_239 en wl_239 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and240
+ in_240 en wl_240 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and241
+ in_241 en wl_241 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and242
+ in_242 en wl_242 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and243
+ in_243 en wl_243 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and244
+ in_244 en wl_244 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and245
+ in_245 en wl_245 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and246
+ in_246 en wl_246 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and247
+ in_247 en wl_247 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and248
+ in_248 en wl_248 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and249
+ in_249 en wl_249 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and250
+ in_250 en wl_250 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and251
+ in_251 en wl_251 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and252
+ in_252 en wl_252 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and253
+ in_253 en wl_253 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and254
+ in_254 en wl_254 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
Xwl_driver_and255
+ in_255 en wl_255 vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver
.ENDS sram_32b_256_1rw_freepdk45_wordline_driver_array

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

.SUBCKT sram_32b_256_1rw_freepdk45_pnand3
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpnand3_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand3_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand3_pmos3 Z C vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand3_nmos1 Z C net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand3_nmos2 net1 B net2 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand3_nmos3 net2 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS sram_32b_256_1rw_freepdk45_pnand3

* spice ptx M{0} {1} pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

* spice ptx M{0} {1} nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p

.SUBCKT sram_32b_256_1rw_freepdk45_pinv
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS sram_32b_256_1rw_freepdk45_pinv

.SUBCKT sram_32b_256_1rw_freepdk45_and3_dec
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand3_dec_nand
+ A B C zb_int vdd gnd
+ sram_32b_256_1rw_freepdk45_pnand3
Xpand3_dec_inv
+ zb_int Z vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv
.ENDS sram_32b_256_1rw_freepdk45_and3_dec

.SUBCKT sram_32b_256_1rw_freepdk45_hierarchical_predecode3x8
+ in_0 in_1 in_2 out_0 out_1 out_2 out_3 out_4 out_5 out_6 out_7 vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* INPUT : in_2 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* OUTPUT: out_4 
* OUTPUT: out_5 
* OUTPUT: out_6 
* OUTPUT: out_7 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0
+ in_0 inbar_0 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv
Xpre_inv_1
+ in_1 inbar_1 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv
Xpre_inv_2
+ in_2 inbar_2 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv
XXpre3x8_and_0
+ inbar_0 inbar_1 inbar_2 out_0 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XXpre3x8_and_1
+ in_0 inbar_1 inbar_2 out_1 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XXpre3x8_and_2
+ inbar_0 in_1 inbar_2 out_2 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XXpre3x8_and_3
+ in_0 in_1 inbar_2 out_3 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XXpre3x8_and_4
+ inbar_0 inbar_1 in_2 out_4 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XXpre3x8_and_5
+ in_0 inbar_1 in_2 out_5 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XXpre3x8_and_6
+ inbar_0 in_1 in_2 out_6 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XXpre3x8_and_7
+ in_0 in_1 in_2 out_7 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
.ENDS sram_32b_256_1rw_freepdk45_hierarchical_predecode3x8

.SUBCKT sram_32b_256_1rw_freepdk45_and2_dec
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ sram_32b_256_1rw_freepdk45_pnand2
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv
.ENDS sram_32b_256_1rw_freepdk45_and2_dec

.SUBCKT sram_32b_256_1rw_freepdk45_hierarchical_predecode2x4
+ in_0 in_1 out_0 out_1 out_2 out_3 vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0
+ in_0 inbar_0 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv
Xpre_inv_1
+ in_1 inbar_1 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv
XXpre2x4_and_0
+ inbar_0 inbar_1 out_0 vdd gnd
+ sram_32b_256_1rw_freepdk45_and2_dec
XXpre2x4_and_1
+ in_0 inbar_1 out_1 vdd gnd
+ sram_32b_256_1rw_freepdk45_and2_dec
XXpre2x4_and_2
+ inbar_0 in_1 out_2 vdd gnd
+ sram_32b_256_1rw_freepdk45_and2_dec
XXpre2x4_and_3
+ in_0 in_1 out_3 vdd gnd
+ sram_32b_256_1rw_freepdk45_and2_dec
.ENDS sram_32b_256_1rw_freepdk45_hierarchical_predecode2x4

.SUBCKT sram_32b_256_1rw_freepdk45_hierarchical_decoder
+ addr_0 addr_1 addr_2 addr_3 addr_4 addr_5 addr_6 addr_7 decode_0
+ decode_1 decode_2 decode_3 decode_4 decode_5 decode_6 decode_7
+ decode_8 decode_9 decode_10 decode_11 decode_12 decode_13 decode_14
+ decode_15 decode_16 decode_17 decode_18 decode_19 decode_20 decode_21
+ decode_22 decode_23 decode_24 decode_25 decode_26 decode_27 decode_28
+ decode_29 decode_30 decode_31 decode_32 decode_33 decode_34 decode_35
+ decode_36 decode_37 decode_38 decode_39 decode_40 decode_41 decode_42
+ decode_43 decode_44 decode_45 decode_46 decode_47 decode_48 decode_49
+ decode_50 decode_51 decode_52 decode_53 decode_54 decode_55 decode_56
+ decode_57 decode_58 decode_59 decode_60 decode_61 decode_62 decode_63
+ decode_64 decode_65 decode_66 decode_67 decode_68 decode_69 decode_70
+ decode_71 decode_72 decode_73 decode_74 decode_75 decode_76 decode_77
+ decode_78 decode_79 decode_80 decode_81 decode_82 decode_83 decode_84
+ decode_85 decode_86 decode_87 decode_88 decode_89 decode_90 decode_91
+ decode_92 decode_93 decode_94 decode_95 decode_96 decode_97 decode_98
+ decode_99 decode_100 decode_101 decode_102 decode_103 decode_104
+ decode_105 decode_106 decode_107 decode_108 decode_109 decode_110
+ decode_111 decode_112 decode_113 decode_114 decode_115 decode_116
+ decode_117 decode_118 decode_119 decode_120 decode_121 decode_122
+ decode_123 decode_124 decode_125 decode_126 decode_127 decode_128
+ decode_129 decode_130 decode_131 decode_132 decode_133 decode_134
+ decode_135 decode_136 decode_137 decode_138 decode_139 decode_140
+ decode_141 decode_142 decode_143 decode_144 decode_145 decode_146
+ decode_147 decode_148 decode_149 decode_150 decode_151 decode_152
+ decode_153 decode_154 decode_155 decode_156 decode_157 decode_158
+ decode_159 decode_160 decode_161 decode_162 decode_163 decode_164
+ decode_165 decode_166 decode_167 decode_168 decode_169 decode_170
+ decode_171 decode_172 decode_173 decode_174 decode_175 decode_176
+ decode_177 decode_178 decode_179 decode_180 decode_181 decode_182
+ decode_183 decode_184 decode_185 decode_186 decode_187 decode_188
+ decode_189 decode_190 decode_191 decode_192 decode_193 decode_194
+ decode_195 decode_196 decode_197 decode_198 decode_199 decode_200
+ decode_201 decode_202 decode_203 decode_204 decode_205 decode_206
+ decode_207 decode_208 decode_209 decode_210 decode_211 decode_212
+ decode_213 decode_214 decode_215 decode_216 decode_217 decode_218
+ decode_219 decode_220 decode_221 decode_222 decode_223 decode_224
+ decode_225 decode_226 decode_227 decode_228 decode_229 decode_230
+ decode_231 decode_232 decode_233 decode_234 decode_235 decode_236
+ decode_237 decode_238 decode_239 decode_240 decode_241 decode_242
+ decode_243 decode_244 decode_245 decode_246 decode_247 decode_248
+ decode_249 decode_250 decode_251 decode_252 decode_253 decode_254
+ decode_255 vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : addr_4 
* INPUT : addr_5 
* INPUT : addr_6 
* INPUT : addr_7 
* OUTPUT: decode_0 
* OUTPUT: decode_1 
* OUTPUT: decode_2 
* OUTPUT: decode_3 
* OUTPUT: decode_4 
* OUTPUT: decode_5 
* OUTPUT: decode_6 
* OUTPUT: decode_7 
* OUTPUT: decode_8 
* OUTPUT: decode_9 
* OUTPUT: decode_10 
* OUTPUT: decode_11 
* OUTPUT: decode_12 
* OUTPUT: decode_13 
* OUTPUT: decode_14 
* OUTPUT: decode_15 
* OUTPUT: decode_16 
* OUTPUT: decode_17 
* OUTPUT: decode_18 
* OUTPUT: decode_19 
* OUTPUT: decode_20 
* OUTPUT: decode_21 
* OUTPUT: decode_22 
* OUTPUT: decode_23 
* OUTPUT: decode_24 
* OUTPUT: decode_25 
* OUTPUT: decode_26 
* OUTPUT: decode_27 
* OUTPUT: decode_28 
* OUTPUT: decode_29 
* OUTPUT: decode_30 
* OUTPUT: decode_31 
* OUTPUT: decode_32 
* OUTPUT: decode_33 
* OUTPUT: decode_34 
* OUTPUT: decode_35 
* OUTPUT: decode_36 
* OUTPUT: decode_37 
* OUTPUT: decode_38 
* OUTPUT: decode_39 
* OUTPUT: decode_40 
* OUTPUT: decode_41 
* OUTPUT: decode_42 
* OUTPUT: decode_43 
* OUTPUT: decode_44 
* OUTPUT: decode_45 
* OUTPUT: decode_46 
* OUTPUT: decode_47 
* OUTPUT: decode_48 
* OUTPUT: decode_49 
* OUTPUT: decode_50 
* OUTPUT: decode_51 
* OUTPUT: decode_52 
* OUTPUT: decode_53 
* OUTPUT: decode_54 
* OUTPUT: decode_55 
* OUTPUT: decode_56 
* OUTPUT: decode_57 
* OUTPUT: decode_58 
* OUTPUT: decode_59 
* OUTPUT: decode_60 
* OUTPUT: decode_61 
* OUTPUT: decode_62 
* OUTPUT: decode_63 
* OUTPUT: decode_64 
* OUTPUT: decode_65 
* OUTPUT: decode_66 
* OUTPUT: decode_67 
* OUTPUT: decode_68 
* OUTPUT: decode_69 
* OUTPUT: decode_70 
* OUTPUT: decode_71 
* OUTPUT: decode_72 
* OUTPUT: decode_73 
* OUTPUT: decode_74 
* OUTPUT: decode_75 
* OUTPUT: decode_76 
* OUTPUT: decode_77 
* OUTPUT: decode_78 
* OUTPUT: decode_79 
* OUTPUT: decode_80 
* OUTPUT: decode_81 
* OUTPUT: decode_82 
* OUTPUT: decode_83 
* OUTPUT: decode_84 
* OUTPUT: decode_85 
* OUTPUT: decode_86 
* OUTPUT: decode_87 
* OUTPUT: decode_88 
* OUTPUT: decode_89 
* OUTPUT: decode_90 
* OUTPUT: decode_91 
* OUTPUT: decode_92 
* OUTPUT: decode_93 
* OUTPUT: decode_94 
* OUTPUT: decode_95 
* OUTPUT: decode_96 
* OUTPUT: decode_97 
* OUTPUT: decode_98 
* OUTPUT: decode_99 
* OUTPUT: decode_100 
* OUTPUT: decode_101 
* OUTPUT: decode_102 
* OUTPUT: decode_103 
* OUTPUT: decode_104 
* OUTPUT: decode_105 
* OUTPUT: decode_106 
* OUTPUT: decode_107 
* OUTPUT: decode_108 
* OUTPUT: decode_109 
* OUTPUT: decode_110 
* OUTPUT: decode_111 
* OUTPUT: decode_112 
* OUTPUT: decode_113 
* OUTPUT: decode_114 
* OUTPUT: decode_115 
* OUTPUT: decode_116 
* OUTPUT: decode_117 
* OUTPUT: decode_118 
* OUTPUT: decode_119 
* OUTPUT: decode_120 
* OUTPUT: decode_121 
* OUTPUT: decode_122 
* OUTPUT: decode_123 
* OUTPUT: decode_124 
* OUTPUT: decode_125 
* OUTPUT: decode_126 
* OUTPUT: decode_127 
* OUTPUT: decode_128 
* OUTPUT: decode_129 
* OUTPUT: decode_130 
* OUTPUT: decode_131 
* OUTPUT: decode_132 
* OUTPUT: decode_133 
* OUTPUT: decode_134 
* OUTPUT: decode_135 
* OUTPUT: decode_136 
* OUTPUT: decode_137 
* OUTPUT: decode_138 
* OUTPUT: decode_139 
* OUTPUT: decode_140 
* OUTPUT: decode_141 
* OUTPUT: decode_142 
* OUTPUT: decode_143 
* OUTPUT: decode_144 
* OUTPUT: decode_145 
* OUTPUT: decode_146 
* OUTPUT: decode_147 
* OUTPUT: decode_148 
* OUTPUT: decode_149 
* OUTPUT: decode_150 
* OUTPUT: decode_151 
* OUTPUT: decode_152 
* OUTPUT: decode_153 
* OUTPUT: decode_154 
* OUTPUT: decode_155 
* OUTPUT: decode_156 
* OUTPUT: decode_157 
* OUTPUT: decode_158 
* OUTPUT: decode_159 
* OUTPUT: decode_160 
* OUTPUT: decode_161 
* OUTPUT: decode_162 
* OUTPUT: decode_163 
* OUTPUT: decode_164 
* OUTPUT: decode_165 
* OUTPUT: decode_166 
* OUTPUT: decode_167 
* OUTPUT: decode_168 
* OUTPUT: decode_169 
* OUTPUT: decode_170 
* OUTPUT: decode_171 
* OUTPUT: decode_172 
* OUTPUT: decode_173 
* OUTPUT: decode_174 
* OUTPUT: decode_175 
* OUTPUT: decode_176 
* OUTPUT: decode_177 
* OUTPUT: decode_178 
* OUTPUT: decode_179 
* OUTPUT: decode_180 
* OUTPUT: decode_181 
* OUTPUT: decode_182 
* OUTPUT: decode_183 
* OUTPUT: decode_184 
* OUTPUT: decode_185 
* OUTPUT: decode_186 
* OUTPUT: decode_187 
* OUTPUT: decode_188 
* OUTPUT: decode_189 
* OUTPUT: decode_190 
* OUTPUT: decode_191 
* OUTPUT: decode_192 
* OUTPUT: decode_193 
* OUTPUT: decode_194 
* OUTPUT: decode_195 
* OUTPUT: decode_196 
* OUTPUT: decode_197 
* OUTPUT: decode_198 
* OUTPUT: decode_199 
* OUTPUT: decode_200 
* OUTPUT: decode_201 
* OUTPUT: decode_202 
* OUTPUT: decode_203 
* OUTPUT: decode_204 
* OUTPUT: decode_205 
* OUTPUT: decode_206 
* OUTPUT: decode_207 
* OUTPUT: decode_208 
* OUTPUT: decode_209 
* OUTPUT: decode_210 
* OUTPUT: decode_211 
* OUTPUT: decode_212 
* OUTPUT: decode_213 
* OUTPUT: decode_214 
* OUTPUT: decode_215 
* OUTPUT: decode_216 
* OUTPUT: decode_217 
* OUTPUT: decode_218 
* OUTPUT: decode_219 
* OUTPUT: decode_220 
* OUTPUT: decode_221 
* OUTPUT: decode_222 
* OUTPUT: decode_223 
* OUTPUT: decode_224 
* OUTPUT: decode_225 
* OUTPUT: decode_226 
* OUTPUT: decode_227 
* OUTPUT: decode_228 
* OUTPUT: decode_229 
* OUTPUT: decode_230 
* OUTPUT: decode_231 
* OUTPUT: decode_232 
* OUTPUT: decode_233 
* OUTPUT: decode_234 
* OUTPUT: decode_235 
* OUTPUT: decode_236 
* OUTPUT: decode_237 
* OUTPUT: decode_238 
* OUTPUT: decode_239 
* OUTPUT: decode_240 
* OUTPUT: decode_241 
* OUTPUT: decode_242 
* OUTPUT: decode_243 
* OUTPUT: decode_244 
* OUTPUT: decode_245 
* OUTPUT: decode_246 
* OUTPUT: decode_247 
* OUTPUT: decode_248 
* OUTPUT: decode_249 
* OUTPUT: decode_250 
* OUTPUT: decode_251 
* OUTPUT: decode_252 
* OUTPUT: decode_253 
* OUTPUT: decode_254 
* OUTPUT: decode_255 
* POWER : vdd 
* GROUND: gnd 
Xpre_0
+ addr_0 addr_1 out_0 out_1 out_2 out_3 vdd gnd
+ sram_32b_256_1rw_freepdk45_hierarchical_predecode2x4
Xpre3x8_0
+ addr_2 addr_3 addr_4 out_4 out_5 out_6 out_7 out_8 out_9 out_10 out_11
+ vdd gnd
+ sram_32b_256_1rw_freepdk45_hierarchical_predecode3x8
Xpre3x8_1
+ addr_5 addr_6 addr_7 out_12 out_13 out_14 out_15 out_16 out_17 out_18
+ out_19 vdd gnd
+ sram_32b_256_1rw_freepdk45_hierarchical_predecode3x8
XDEC_AND_0
+ out_0 out_4 out_12 decode_0 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_32
+ out_0 out_4 out_13 decode_32 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_64
+ out_0 out_4 out_14 decode_64 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_96
+ out_0 out_4 out_15 decode_96 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_128
+ out_0 out_4 out_16 decode_128 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_160
+ out_0 out_4 out_17 decode_160 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_192
+ out_0 out_4 out_18 decode_192 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_224
+ out_0 out_4 out_19 decode_224 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_4
+ out_0 out_5 out_12 decode_4 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_36
+ out_0 out_5 out_13 decode_36 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_68
+ out_0 out_5 out_14 decode_68 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_100
+ out_0 out_5 out_15 decode_100 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_132
+ out_0 out_5 out_16 decode_132 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_164
+ out_0 out_5 out_17 decode_164 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_196
+ out_0 out_5 out_18 decode_196 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_228
+ out_0 out_5 out_19 decode_228 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_8
+ out_0 out_6 out_12 decode_8 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_40
+ out_0 out_6 out_13 decode_40 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_72
+ out_0 out_6 out_14 decode_72 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_104
+ out_0 out_6 out_15 decode_104 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_136
+ out_0 out_6 out_16 decode_136 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_168
+ out_0 out_6 out_17 decode_168 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_200
+ out_0 out_6 out_18 decode_200 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_232
+ out_0 out_6 out_19 decode_232 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_12
+ out_0 out_7 out_12 decode_12 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_44
+ out_0 out_7 out_13 decode_44 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_76
+ out_0 out_7 out_14 decode_76 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_108
+ out_0 out_7 out_15 decode_108 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_140
+ out_0 out_7 out_16 decode_140 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_172
+ out_0 out_7 out_17 decode_172 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_204
+ out_0 out_7 out_18 decode_204 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_236
+ out_0 out_7 out_19 decode_236 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_16
+ out_0 out_8 out_12 decode_16 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_48
+ out_0 out_8 out_13 decode_48 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_80
+ out_0 out_8 out_14 decode_80 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_112
+ out_0 out_8 out_15 decode_112 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_144
+ out_0 out_8 out_16 decode_144 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_176
+ out_0 out_8 out_17 decode_176 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_208
+ out_0 out_8 out_18 decode_208 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_240
+ out_0 out_8 out_19 decode_240 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_20
+ out_0 out_9 out_12 decode_20 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_52
+ out_0 out_9 out_13 decode_52 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_84
+ out_0 out_9 out_14 decode_84 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_116
+ out_0 out_9 out_15 decode_116 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_148
+ out_0 out_9 out_16 decode_148 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_180
+ out_0 out_9 out_17 decode_180 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_212
+ out_0 out_9 out_18 decode_212 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_244
+ out_0 out_9 out_19 decode_244 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_24
+ out_0 out_10 out_12 decode_24 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_56
+ out_0 out_10 out_13 decode_56 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_88
+ out_0 out_10 out_14 decode_88 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_120
+ out_0 out_10 out_15 decode_120 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_152
+ out_0 out_10 out_16 decode_152 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_184
+ out_0 out_10 out_17 decode_184 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_216
+ out_0 out_10 out_18 decode_216 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_248
+ out_0 out_10 out_19 decode_248 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_28
+ out_0 out_11 out_12 decode_28 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_60
+ out_0 out_11 out_13 decode_60 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_92
+ out_0 out_11 out_14 decode_92 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_124
+ out_0 out_11 out_15 decode_124 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_156
+ out_0 out_11 out_16 decode_156 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_188
+ out_0 out_11 out_17 decode_188 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_220
+ out_0 out_11 out_18 decode_220 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_252
+ out_0 out_11 out_19 decode_252 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_1
+ out_1 out_4 out_12 decode_1 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_33
+ out_1 out_4 out_13 decode_33 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_65
+ out_1 out_4 out_14 decode_65 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_97
+ out_1 out_4 out_15 decode_97 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_129
+ out_1 out_4 out_16 decode_129 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_161
+ out_1 out_4 out_17 decode_161 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_193
+ out_1 out_4 out_18 decode_193 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_225
+ out_1 out_4 out_19 decode_225 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_5
+ out_1 out_5 out_12 decode_5 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_37
+ out_1 out_5 out_13 decode_37 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_69
+ out_1 out_5 out_14 decode_69 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_101
+ out_1 out_5 out_15 decode_101 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_133
+ out_1 out_5 out_16 decode_133 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_165
+ out_1 out_5 out_17 decode_165 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_197
+ out_1 out_5 out_18 decode_197 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_229
+ out_1 out_5 out_19 decode_229 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_9
+ out_1 out_6 out_12 decode_9 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_41
+ out_1 out_6 out_13 decode_41 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_73
+ out_1 out_6 out_14 decode_73 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_105
+ out_1 out_6 out_15 decode_105 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_137
+ out_1 out_6 out_16 decode_137 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_169
+ out_1 out_6 out_17 decode_169 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_201
+ out_1 out_6 out_18 decode_201 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_233
+ out_1 out_6 out_19 decode_233 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_13
+ out_1 out_7 out_12 decode_13 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_45
+ out_1 out_7 out_13 decode_45 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_77
+ out_1 out_7 out_14 decode_77 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_109
+ out_1 out_7 out_15 decode_109 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_141
+ out_1 out_7 out_16 decode_141 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_173
+ out_1 out_7 out_17 decode_173 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_205
+ out_1 out_7 out_18 decode_205 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_237
+ out_1 out_7 out_19 decode_237 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_17
+ out_1 out_8 out_12 decode_17 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_49
+ out_1 out_8 out_13 decode_49 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_81
+ out_1 out_8 out_14 decode_81 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_113
+ out_1 out_8 out_15 decode_113 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_145
+ out_1 out_8 out_16 decode_145 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_177
+ out_1 out_8 out_17 decode_177 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_209
+ out_1 out_8 out_18 decode_209 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_241
+ out_1 out_8 out_19 decode_241 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_21
+ out_1 out_9 out_12 decode_21 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_53
+ out_1 out_9 out_13 decode_53 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_85
+ out_1 out_9 out_14 decode_85 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_117
+ out_1 out_9 out_15 decode_117 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_149
+ out_1 out_9 out_16 decode_149 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_181
+ out_1 out_9 out_17 decode_181 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_213
+ out_1 out_9 out_18 decode_213 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_245
+ out_1 out_9 out_19 decode_245 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_25
+ out_1 out_10 out_12 decode_25 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_57
+ out_1 out_10 out_13 decode_57 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_89
+ out_1 out_10 out_14 decode_89 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_121
+ out_1 out_10 out_15 decode_121 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_153
+ out_1 out_10 out_16 decode_153 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_185
+ out_1 out_10 out_17 decode_185 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_217
+ out_1 out_10 out_18 decode_217 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_249
+ out_1 out_10 out_19 decode_249 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_29
+ out_1 out_11 out_12 decode_29 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_61
+ out_1 out_11 out_13 decode_61 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_93
+ out_1 out_11 out_14 decode_93 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_125
+ out_1 out_11 out_15 decode_125 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_157
+ out_1 out_11 out_16 decode_157 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_189
+ out_1 out_11 out_17 decode_189 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_221
+ out_1 out_11 out_18 decode_221 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_253
+ out_1 out_11 out_19 decode_253 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_2
+ out_2 out_4 out_12 decode_2 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_34
+ out_2 out_4 out_13 decode_34 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_66
+ out_2 out_4 out_14 decode_66 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_98
+ out_2 out_4 out_15 decode_98 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_130
+ out_2 out_4 out_16 decode_130 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_162
+ out_2 out_4 out_17 decode_162 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_194
+ out_2 out_4 out_18 decode_194 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_226
+ out_2 out_4 out_19 decode_226 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_6
+ out_2 out_5 out_12 decode_6 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_38
+ out_2 out_5 out_13 decode_38 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_70
+ out_2 out_5 out_14 decode_70 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_102
+ out_2 out_5 out_15 decode_102 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_134
+ out_2 out_5 out_16 decode_134 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_166
+ out_2 out_5 out_17 decode_166 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_198
+ out_2 out_5 out_18 decode_198 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_230
+ out_2 out_5 out_19 decode_230 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_10
+ out_2 out_6 out_12 decode_10 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_42
+ out_2 out_6 out_13 decode_42 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_74
+ out_2 out_6 out_14 decode_74 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_106
+ out_2 out_6 out_15 decode_106 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_138
+ out_2 out_6 out_16 decode_138 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_170
+ out_2 out_6 out_17 decode_170 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_202
+ out_2 out_6 out_18 decode_202 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_234
+ out_2 out_6 out_19 decode_234 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_14
+ out_2 out_7 out_12 decode_14 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_46
+ out_2 out_7 out_13 decode_46 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_78
+ out_2 out_7 out_14 decode_78 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_110
+ out_2 out_7 out_15 decode_110 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_142
+ out_2 out_7 out_16 decode_142 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_174
+ out_2 out_7 out_17 decode_174 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_206
+ out_2 out_7 out_18 decode_206 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_238
+ out_2 out_7 out_19 decode_238 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_18
+ out_2 out_8 out_12 decode_18 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_50
+ out_2 out_8 out_13 decode_50 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_82
+ out_2 out_8 out_14 decode_82 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_114
+ out_2 out_8 out_15 decode_114 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_146
+ out_2 out_8 out_16 decode_146 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_178
+ out_2 out_8 out_17 decode_178 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_210
+ out_2 out_8 out_18 decode_210 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_242
+ out_2 out_8 out_19 decode_242 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_22
+ out_2 out_9 out_12 decode_22 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_54
+ out_2 out_9 out_13 decode_54 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_86
+ out_2 out_9 out_14 decode_86 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_118
+ out_2 out_9 out_15 decode_118 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_150
+ out_2 out_9 out_16 decode_150 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_182
+ out_2 out_9 out_17 decode_182 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_214
+ out_2 out_9 out_18 decode_214 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_246
+ out_2 out_9 out_19 decode_246 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_26
+ out_2 out_10 out_12 decode_26 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_58
+ out_2 out_10 out_13 decode_58 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_90
+ out_2 out_10 out_14 decode_90 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_122
+ out_2 out_10 out_15 decode_122 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_154
+ out_2 out_10 out_16 decode_154 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_186
+ out_2 out_10 out_17 decode_186 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_218
+ out_2 out_10 out_18 decode_218 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_250
+ out_2 out_10 out_19 decode_250 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_30
+ out_2 out_11 out_12 decode_30 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_62
+ out_2 out_11 out_13 decode_62 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_94
+ out_2 out_11 out_14 decode_94 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_126
+ out_2 out_11 out_15 decode_126 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_158
+ out_2 out_11 out_16 decode_158 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_190
+ out_2 out_11 out_17 decode_190 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_222
+ out_2 out_11 out_18 decode_222 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_254
+ out_2 out_11 out_19 decode_254 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_3
+ out_3 out_4 out_12 decode_3 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_35
+ out_3 out_4 out_13 decode_35 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_67
+ out_3 out_4 out_14 decode_67 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_99
+ out_3 out_4 out_15 decode_99 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_131
+ out_3 out_4 out_16 decode_131 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_163
+ out_3 out_4 out_17 decode_163 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_195
+ out_3 out_4 out_18 decode_195 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_227
+ out_3 out_4 out_19 decode_227 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_7
+ out_3 out_5 out_12 decode_7 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_39
+ out_3 out_5 out_13 decode_39 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_71
+ out_3 out_5 out_14 decode_71 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_103
+ out_3 out_5 out_15 decode_103 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_135
+ out_3 out_5 out_16 decode_135 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_167
+ out_3 out_5 out_17 decode_167 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_199
+ out_3 out_5 out_18 decode_199 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_231
+ out_3 out_5 out_19 decode_231 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_11
+ out_3 out_6 out_12 decode_11 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_43
+ out_3 out_6 out_13 decode_43 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_75
+ out_3 out_6 out_14 decode_75 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_107
+ out_3 out_6 out_15 decode_107 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_139
+ out_3 out_6 out_16 decode_139 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_171
+ out_3 out_6 out_17 decode_171 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_203
+ out_3 out_6 out_18 decode_203 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_235
+ out_3 out_6 out_19 decode_235 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_15
+ out_3 out_7 out_12 decode_15 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_47
+ out_3 out_7 out_13 decode_47 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_79
+ out_3 out_7 out_14 decode_79 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_111
+ out_3 out_7 out_15 decode_111 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_143
+ out_3 out_7 out_16 decode_143 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_175
+ out_3 out_7 out_17 decode_175 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_207
+ out_3 out_7 out_18 decode_207 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_239
+ out_3 out_7 out_19 decode_239 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_19
+ out_3 out_8 out_12 decode_19 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_51
+ out_3 out_8 out_13 decode_51 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_83
+ out_3 out_8 out_14 decode_83 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_115
+ out_3 out_8 out_15 decode_115 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_147
+ out_3 out_8 out_16 decode_147 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_179
+ out_3 out_8 out_17 decode_179 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_211
+ out_3 out_8 out_18 decode_211 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_243
+ out_3 out_8 out_19 decode_243 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_23
+ out_3 out_9 out_12 decode_23 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_55
+ out_3 out_9 out_13 decode_55 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_87
+ out_3 out_9 out_14 decode_87 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_119
+ out_3 out_9 out_15 decode_119 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_151
+ out_3 out_9 out_16 decode_151 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_183
+ out_3 out_9 out_17 decode_183 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_215
+ out_3 out_9 out_18 decode_215 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_247
+ out_3 out_9 out_19 decode_247 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_27
+ out_3 out_10 out_12 decode_27 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_59
+ out_3 out_10 out_13 decode_59 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_91
+ out_3 out_10 out_14 decode_91 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_123
+ out_3 out_10 out_15 decode_123 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_155
+ out_3 out_10 out_16 decode_155 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_187
+ out_3 out_10 out_17 decode_187 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_219
+ out_3 out_10 out_18 decode_219 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_251
+ out_3 out_10 out_19 decode_251 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_31
+ out_3 out_11 out_12 decode_31 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_63
+ out_3 out_11 out_13 decode_63 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_95
+ out_3 out_11 out_14 decode_95 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_127
+ out_3 out_11 out_15 decode_127 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_159
+ out_3 out_11 out_16 decode_159 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_191
+ out_3 out_11 out_17 decode_191 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_223
+ out_3 out_11 out_18 decode_223 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
XDEC_AND_255
+ out_3 out_11 out_19 decode_255 vdd gnd
+ sram_32b_256_1rw_freepdk45_and3_dec
.ENDS sram_32b_256_1rw_freepdk45_hierarchical_decoder

.SUBCKT sram_32b_256_1rw_freepdk45_and2_dec_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 8
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ sram_32b_256_1rw_freepdk45_pnand2
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_0
.ENDS sram_32b_256_1rw_freepdk45_and2_dec_0

.SUBCKT sram_32b_256_1rw_freepdk45_port_address
+ addr_0 addr_1 addr_2 addr_3 addr_4 addr_5 addr_6 addr_7 wl_en wl_0
+ wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13
+ wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24
+ wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 wl_35
+ wl_36 wl_37 wl_38 wl_39 wl_40 wl_41 wl_42 wl_43 wl_44 wl_45 wl_46
+ wl_47 wl_48 wl_49 wl_50 wl_51 wl_52 wl_53 wl_54 wl_55 wl_56 wl_57
+ wl_58 wl_59 wl_60 wl_61 wl_62 wl_63 wl_64 wl_65 wl_66 wl_67 wl_68
+ wl_69 wl_70 wl_71 wl_72 wl_73 wl_74 wl_75 wl_76 wl_77 wl_78 wl_79
+ wl_80 wl_81 wl_82 wl_83 wl_84 wl_85 wl_86 wl_87 wl_88 wl_89 wl_90
+ wl_91 wl_92 wl_93 wl_94 wl_95 wl_96 wl_97 wl_98 wl_99 wl_100 wl_101
+ wl_102 wl_103 wl_104 wl_105 wl_106 wl_107 wl_108 wl_109 wl_110 wl_111
+ wl_112 wl_113 wl_114 wl_115 wl_116 wl_117 wl_118 wl_119 wl_120 wl_121
+ wl_122 wl_123 wl_124 wl_125 wl_126 wl_127 wl_128 wl_129 wl_130 wl_131
+ wl_132 wl_133 wl_134 wl_135 wl_136 wl_137 wl_138 wl_139 wl_140 wl_141
+ wl_142 wl_143 wl_144 wl_145 wl_146 wl_147 wl_148 wl_149 wl_150 wl_151
+ wl_152 wl_153 wl_154 wl_155 wl_156 wl_157 wl_158 wl_159 wl_160 wl_161
+ wl_162 wl_163 wl_164 wl_165 wl_166 wl_167 wl_168 wl_169 wl_170 wl_171
+ wl_172 wl_173 wl_174 wl_175 wl_176 wl_177 wl_178 wl_179 wl_180 wl_181
+ wl_182 wl_183 wl_184 wl_185 wl_186 wl_187 wl_188 wl_189 wl_190 wl_191
+ wl_192 wl_193 wl_194 wl_195 wl_196 wl_197 wl_198 wl_199 wl_200 wl_201
+ wl_202 wl_203 wl_204 wl_205 wl_206 wl_207 wl_208 wl_209 wl_210 wl_211
+ wl_212 wl_213 wl_214 wl_215 wl_216 wl_217 wl_218 wl_219 wl_220 wl_221
+ wl_222 wl_223 wl_224 wl_225 wl_226 wl_227 wl_228 wl_229 wl_230 wl_231
+ wl_232 wl_233 wl_234 wl_235 wl_236 wl_237 wl_238 wl_239 wl_240 wl_241
+ wl_242 wl_243 wl_244 wl_245 wl_246 wl_247 wl_248 wl_249 wl_250 wl_251
+ wl_252 wl_253 wl_254 wl_255 rbl_wl vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : addr_4 
* INPUT : addr_5 
* INPUT : addr_6 
* INPUT : addr_7 
* INPUT : wl_en 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* OUTPUT: wl_16 
* OUTPUT: wl_17 
* OUTPUT: wl_18 
* OUTPUT: wl_19 
* OUTPUT: wl_20 
* OUTPUT: wl_21 
* OUTPUT: wl_22 
* OUTPUT: wl_23 
* OUTPUT: wl_24 
* OUTPUT: wl_25 
* OUTPUT: wl_26 
* OUTPUT: wl_27 
* OUTPUT: wl_28 
* OUTPUT: wl_29 
* OUTPUT: wl_30 
* OUTPUT: wl_31 
* OUTPUT: wl_32 
* OUTPUT: wl_33 
* OUTPUT: wl_34 
* OUTPUT: wl_35 
* OUTPUT: wl_36 
* OUTPUT: wl_37 
* OUTPUT: wl_38 
* OUTPUT: wl_39 
* OUTPUT: wl_40 
* OUTPUT: wl_41 
* OUTPUT: wl_42 
* OUTPUT: wl_43 
* OUTPUT: wl_44 
* OUTPUT: wl_45 
* OUTPUT: wl_46 
* OUTPUT: wl_47 
* OUTPUT: wl_48 
* OUTPUT: wl_49 
* OUTPUT: wl_50 
* OUTPUT: wl_51 
* OUTPUT: wl_52 
* OUTPUT: wl_53 
* OUTPUT: wl_54 
* OUTPUT: wl_55 
* OUTPUT: wl_56 
* OUTPUT: wl_57 
* OUTPUT: wl_58 
* OUTPUT: wl_59 
* OUTPUT: wl_60 
* OUTPUT: wl_61 
* OUTPUT: wl_62 
* OUTPUT: wl_63 
* OUTPUT: wl_64 
* OUTPUT: wl_65 
* OUTPUT: wl_66 
* OUTPUT: wl_67 
* OUTPUT: wl_68 
* OUTPUT: wl_69 
* OUTPUT: wl_70 
* OUTPUT: wl_71 
* OUTPUT: wl_72 
* OUTPUT: wl_73 
* OUTPUT: wl_74 
* OUTPUT: wl_75 
* OUTPUT: wl_76 
* OUTPUT: wl_77 
* OUTPUT: wl_78 
* OUTPUT: wl_79 
* OUTPUT: wl_80 
* OUTPUT: wl_81 
* OUTPUT: wl_82 
* OUTPUT: wl_83 
* OUTPUT: wl_84 
* OUTPUT: wl_85 
* OUTPUT: wl_86 
* OUTPUT: wl_87 
* OUTPUT: wl_88 
* OUTPUT: wl_89 
* OUTPUT: wl_90 
* OUTPUT: wl_91 
* OUTPUT: wl_92 
* OUTPUT: wl_93 
* OUTPUT: wl_94 
* OUTPUT: wl_95 
* OUTPUT: wl_96 
* OUTPUT: wl_97 
* OUTPUT: wl_98 
* OUTPUT: wl_99 
* OUTPUT: wl_100 
* OUTPUT: wl_101 
* OUTPUT: wl_102 
* OUTPUT: wl_103 
* OUTPUT: wl_104 
* OUTPUT: wl_105 
* OUTPUT: wl_106 
* OUTPUT: wl_107 
* OUTPUT: wl_108 
* OUTPUT: wl_109 
* OUTPUT: wl_110 
* OUTPUT: wl_111 
* OUTPUT: wl_112 
* OUTPUT: wl_113 
* OUTPUT: wl_114 
* OUTPUT: wl_115 
* OUTPUT: wl_116 
* OUTPUT: wl_117 
* OUTPUT: wl_118 
* OUTPUT: wl_119 
* OUTPUT: wl_120 
* OUTPUT: wl_121 
* OUTPUT: wl_122 
* OUTPUT: wl_123 
* OUTPUT: wl_124 
* OUTPUT: wl_125 
* OUTPUT: wl_126 
* OUTPUT: wl_127 
* OUTPUT: wl_128 
* OUTPUT: wl_129 
* OUTPUT: wl_130 
* OUTPUT: wl_131 
* OUTPUT: wl_132 
* OUTPUT: wl_133 
* OUTPUT: wl_134 
* OUTPUT: wl_135 
* OUTPUT: wl_136 
* OUTPUT: wl_137 
* OUTPUT: wl_138 
* OUTPUT: wl_139 
* OUTPUT: wl_140 
* OUTPUT: wl_141 
* OUTPUT: wl_142 
* OUTPUT: wl_143 
* OUTPUT: wl_144 
* OUTPUT: wl_145 
* OUTPUT: wl_146 
* OUTPUT: wl_147 
* OUTPUT: wl_148 
* OUTPUT: wl_149 
* OUTPUT: wl_150 
* OUTPUT: wl_151 
* OUTPUT: wl_152 
* OUTPUT: wl_153 
* OUTPUT: wl_154 
* OUTPUT: wl_155 
* OUTPUT: wl_156 
* OUTPUT: wl_157 
* OUTPUT: wl_158 
* OUTPUT: wl_159 
* OUTPUT: wl_160 
* OUTPUT: wl_161 
* OUTPUT: wl_162 
* OUTPUT: wl_163 
* OUTPUT: wl_164 
* OUTPUT: wl_165 
* OUTPUT: wl_166 
* OUTPUT: wl_167 
* OUTPUT: wl_168 
* OUTPUT: wl_169 
* OUTPUT: wl_170 
* OUTPUT: wl_171 
* OUTPUT: wl_172 
* OUTPUT: wl_173 
* OUTPUT: wl_174 
* OUTPUT: wl_175 
* OUTPUT: wl_176 
* OUTPUT: wl_177 
* OUTPUT: wl_178 
* OUTPUT: wl_179 
* OUTPUT: wl_180 
* OUTPUT: wl_181 
* OUTPUT: wl_182 
* OUTPUT: wl_183 
* OUTPUT: wl_184 
* OUTPUT: wl_185 
* OUTPUT: wl_186 
* OUTPUT: wl_187 
* OUTPUT: wl_188 
* OUTPUT: wl_189 
* OUTPUT: wl_190 
* OUTPUT: wl_191 
* OUTPUT: wl_192 
* OUTPUT: wl_193 
* OUTPUT: wl_194 
* OUTPUT: wl_195 
* OUTPUT: wl_196 
* OUTPUT: wl_197 
* OUTPUT: wl_198 
* OUTPUT: wl_199 
* OUTPUT: wl_200 
* OUTPUT: wl_201 
* OUTPUT: wl_202 
* OUTPUT: wl_203 
* OUTPUT: wl_204 
* OUTPUT: wl_205 
* OUTPUT: wl_206 
* OUTPUT: wl_207 
* OUTPUT: wl_208 
* OUTPUT: wl_209 
* OUTPUT: wl_210 
* OUTPUT: wl_211 
* OUTPUT: wl_212 
* OUTPUT: wl_213 
* OUTPUT: wl_214 
* OUTPUT: wl_215 
* OUTPUT: wl_216 
* OUTPUT: wl_217 
* OUTPUT: wl_218 
* OUTPUT: wl_219 
* OUTPUT: wl_220 
* OUTPUT: wl_221 
* OUTPUT: wl_222 
* OUTPUT: wl_223 
* OUTPUT: wl_224 
* OUTPUT: wl_225 
* OUTPUT: wl_226 
* OUTPUT: wl_227 
* OUTPUT: wl_228 
* OUTPUT: wl_229 
* OUTPUT: wl_230 
* OUTPUT: wl_231 
* OUTPUT: wl_232 
* OUTPUT: wl_233 
* OUTPUT: wl_234 
* OUTPUT: wl_235 
* OUTPUT: wl_236 
* OUTPUT: wl_237 
* OUTPUT: wl_238 
* OUTPUT: wl_239 
* OUTPUT: wl_240 
* OUTPUT: wl_241 
* OUTPUT: wl_242 
* OUTPUT: wl_243 
* OUTPUT: wl_244 
* OUTPUT: wl_245 
* OUTPUT: wl_246 
* OUTPUT: wl_247 
* OUTPUT: wl_248 
* OUTPUT: wl_249 
* OUTPUT: wl_250 
* OUTPUT: wl_251 
* OUTPUT: wl_252 
* OUTPUT: wl_253 
* OUTPUT: wl_254 
* OUTPUT: wl_255 
* OUTPUT: rbl_wl 
* POWER : vdd 
* GROUND: gnd 
Xrow_decoder
+ addr_0 addr_1 addr_2 addr_3 addr_4 addr_5 addr_6 addr_7 dec_out_0
+ dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6 dec_out_7
+ dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12 dec_out_13
+ dec_out_14 dec_out_15 dec_out_16 dec_out_17 dec_out_18 dec_out_19
+ dec_out_20 dec_out_21 dec_out_22 dec_out_23 dec_out_24 dec_out_25
+ dec_out_26 dec_out_27 dec_out_28 dec_out_29 dec_out_30 dec_out_31
+ dec_out_32 dec_out_33 dec_out_34 dec_out_35 dec_out_36 dec_out_37
+ dec_out_38 dec_out_39 dec_out_40 dec_out_41 dec_out_42 dec_out_43
+ dec_out_44 dec_out_45 dec_out_46 dec_out_47 dec_out_48 dec_out_49
+ dec_out_50 dec_out_51 dec_out_52 dec_out_53 dec_out_54 dec_out_55
+ dec_out_56 dec_out_57 dec_out_58 dec_out_59 dec_out_60 dec_out_61
+ dec_out_62 dec_out_63 dec_out_64 dec_out_65 dec_out_66 dec_out_67
+ dec_out_68 dec_out_69 dec_out_70 dec_out_71 dec_out_72 dec_out_73
+ dec_out_74 dec_out_75 dec_out_76 dec_out_77 dec_out_78 dec_out_79
+ dec_out_80 dec_out_81 dec_out_82 dec_out_83 dec_out_84 dec_out_85
+ dec_out_86 dec_out_87 dec_out_88 dec_out_89 dec_out_90 dec_out_91
+ dec_out_92 dec_out_93 dec_out_94 dec_out_95 dec_out_96 dec_out_97
+ dec_out_98 dec_out_99 dec_out_100 dec_out_101 dec_out_102 dec_out_103
+ dec_out_104 dec_out_105 dec_out_106 dec_out_107 dec_out_108
+ dec_out_109 dec_out_110 dec_out_111 dec_out_112 dec_out_113
+ dec_out_114 dec_out_115 dec_out_116 dec_out_117 dec_out_118
+ dec_out_119 dec_out_120 dec_out_121 dec_out_122 dec_out_123
+ dec_out_124 dec_out_125 dec_out_126 dec_out_127 dec_out_128
+ dec_out_129 dec_out_130 dec_out_131 dec_out_132 dec_out_133
+ dec_out_134 dec_out_135 dec_out_136 dec_out_137 dec_out_138
+ dec_out_139 dec_out_140 dec_out_141 dec_out_142 dec_out_143
+ dec_out_144 dec_out_145 dec_out_146 dec_out_147 dec_out_148
+ dec_out_149 dec_out_150 dec_out_151 dec_out_152 dec_out_153
+ dec_out_154 dec_out_155 dec_out_156 dec_out_157 dec_out_158
+ dec_out_159 dec_out_160 dec_out_161 dec_out_162 dec_out_163
+ dec_out_164 dec_out_165 dec_out_166 dec_out_167 dec_out_168
+ dec_out_169 dec_out_170 dec_out_171 dec_out_172 dec_out_173
+ dec_out_174 dec_out_175 dec_out_176 dec_out_177 dec_out_178
+ dec_out_179 dec_out_180 dec_out_181 dec_out_182 dec_out_183
+ dec_out_184 dec_out_185 dec_out_186 dec_out_187 dec_out_188
+ dec_out_189 dec_out_190 dec_out_191 dec_out_192 dec_out_193
+ dec_out_194 dec_out_195 dec_out_196 dec_out_197 dec_out_198
+ dec_out_199 dec_out_200 dec_out_201 dec_out_202 dec_out_203
+ dec_out_204 dec_out_205 dec_out_206 dec_out_207 dec_out_208
+ dec_out_209 dec_out_210 dec_out_211 dec_out_212 dec_out_213
+ dec_out_214 dec_out_215 dec_out_216 dec_out_217 dec_out_218
+ dec_out_219 dec_out_220 dec_out_221 dec_out_222 dec_out_223
+ dec_out_224 dec_out_225 dec_out_226 dec_out_227 dec_out_228
+ dec_out_229 dec_out_230 dec_out_231 dec_out_232 dec_out_233
+ dec_out_234 dec_out_235 dec_out_236 dec_out_237 dec_out_238
+ dec_out_239 dec_out_240 dec_out_241 dec_out_242 dec_out_243
+ dec_out_244 dec_out_245 dec_out_246 dec_out_247 dec_out_248
+ dec_out_249 dec_out_250 dec_out_251 dec_out_252 dec_out_253
+ dec_out_254 dec_out_255 vdd gnd
+ sram_32b_256_1rw_freepdk45_hierarchical_decoder
Xwordline_driver
+ dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6
+ dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12
+ dec_out_13 dec_out_14 dec_out_15 dec_out_16 dec_out_17 dec_out_18
+ dec_out_19 dec_out_20 dec_out_21 dec_out_22 dec_out_23 dec_out_24
+ dec_out_25 dec_out_26 dec_out_27 dec_out_28 dec_out_29 dec_out_30
+ dec_out_31 dec_out_32 dec_out_33 dec_out_34 dec_out_35 dec_out_36
+ dec_out_37 dec_out_38 dec_out_39 dec_out_40 dec_out_41 dec_out_42
+ dec_out_43 dec_out_44 dec_out_45 dec_out_46 dec_out_47 dec_out_48
+ dec_out_49 dec_out_50 dec_out_51 dec_out_52 dec_out_53 dec_out_54
+ dec_out_55 dec_out_56 dec_out_57 dec_out_58 dec_out_59 dec_out_60
+ dec_out_61 dec_out_62 dec_out_63 dec_out_64 dec_out_65 dec_out_66
+ dec_out_67 dec_out_68 dec_out_69 dec_out_70 dec_out_71 dec_out_72
+ dec_out_73 dec_out_74 dec_out_75 dec_out_76 dec_out_77 dec_out_78
+ dec_out_79 dec_out_80 dec_out_81 dec_out_82 dec_out_83 dec_out_84
+ dec_out_85 dec_out_86 dec_out_87 dec_out_88 dec_out_89 dec_out_90
+ dec_out_91 dec_out_92 dec_out_93 dec_out_94 dec_out_95 dec_out_96
+ dec_out_97 dec_out_98 dec_out_99 dec_out_100 dec_out_101 dec_out_102
+ dec_out_103 dec_out_104 dec_out_105 dec_out_106 dec_out_107
+ dec_out_108 dec_out_109 dec_out_110 dec_out_111 dec_out_112
+ dec_out_113 dec_out_114 dec_out_115 dec_out_116 dec_out_117
+ dec_out_118 dec_out_119 dec_out_120 dec_out_121 dec_out_122
+ dec_out_123 dec_out_124 dec_out_125 dec_out_126 dec_out_127
+ dec_out_128 dec_out_129 dec_out_130 dec_out_131 dec_out_132
+ dec_out_133 dec_out_134 dec_out_135 dec_out_136 dec_out_137
+ dec_out_138 dec_out_139 dec_out_140 dec_out_141 dec_out_142
+ dec_out_143 dec_out_144 dec_out_145 dec_out_146 dec_out_147
+ dec_out_148 dec_out_149 dec_out_150 dec_out_151 dec_out_152
+ dec_out_153 dec_out_154 dec_out_155 dec_out_156 dec_out_157
+ dec_out_158 dec_out_159 dec_out_160 dec_out_161 dec_out_162
+ dec_out_163 dec_out_164 dec_out_165 dec_out_166 dec_out_167
+ dec_out_168 dec_out_169 dec_out_170 dec_out_171 dec_out_172
+ dec_out_173 dec_out_174 dec_out_175 dec_out_176 dec_out_177
+ dec_out_178 dec_out_179 dec_out_180 dec_out_181 dec_out_182
+ dec_out_183 dec_out_184 dec_out_185 dec_out_186 dec_out_187
+ dec_out_188 dec_out_189 dec_out_190 dec_out_191 dec_out_192
+ dec_out_193 dec_out_194 dec_out_195 dec_out_196 dec_out_197
+ dec_out_198 dec_out_199 dec_out_200 dec_out_201 dec_out_202
+ dec_out_203 dec_out_204 dec_out_205 dec_out_206 dec_out_207
+ dec_out_208 dec_out_209 dec_out_210 dec_out_211 dec_out_212
+ dec_out_213 dec_out_214 dec_out_215 dec_out_216 dec_out_217
+ dec_out_218 dec_out_219 dec_out_220 dec_out_221 dec_out_222
+ dec_out_223 dec_out_224 dec_out_225 dec_out_226 dec_out_227
+ dec_out_228 dec_out_229 dec_out_230 dec_out_231 dec_out_232
+ dec_out_233 dec_out_234 dec_out_235 dec_out_236 dec_out_237
+ dec_out_238 dec_out_239 dec_out_240 dec_out_241 dec_out_242
+ dec_out_243 dec_out_244 dec_out_245 dec_out_246 dec_out_247
+ dec_out_248 dec_out_249 dec_out_250 dec_out_251 dec_out_252
+ dec_out_253 dec_out_254 dec_out_255 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6
+ wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18
+ wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29
+ wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38 wl_39 wl_40
+ wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49 wl_50 wl_51
+ wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60 wl_61 wl_62
+ wl_63 wl_64 wl_65 wl_66 wl_67 wl_68 wl_69 wl_70 wl_71 wl_72 wl_73
+ wl_74 wl_75 wl_76 wl_77 wl_78 wl_79 wl_80 wl_81 wl_82 wl_83 wl_84
+ wl_85 wl_86 wl_87 wl_88 wl_89 wl_90 wl_91 wl_92 wl_93 wl_94 wl_95
+ wl_96 wl_97 wl_98 wl_99 wl_100 wl_101 wl_102 wl_103 wl_104 wl_105
+ wl_106 wl_107 wl_108 wl_109 wl_110 wl_111 wl_112 wl_113 wl_114 wl_115
+ wl_116 wl_117 wl_118 wl_119 wl_120 wl_121 wl_122 wl_123 wl_124 wl_125
+ wl_126 wl_127 wl_128 wl_129 wl_130 wl_131 wl_132 wl_133 wl_134 wl_135
+ wl_136 wl_137 wl_138 wl_139 wl_140 wl_141 wl_142 wl_143 wl_144 wl_145
+ wl_146 wl_147 wl_148 wl_149 wl_150 wl_151 wl_152 wl_153 wl_154 wl_155
+ wl_156 wl_157 wl_158 wl_159 wl_160 wl_161 wl_162 wl_163 wl_164 wl_165
+ wl_166 wl_167 wl_168 wl_169 wl_170 wl_171 wl_172 wl_173 wl_174 wl_175
+ wl_176 wl_177 wl_178 wl_179 wl_180 wl_181 wl_182 wl_183 wl_184 wl_185
+ wl_186 wl_187 wl_188 wl_189 wl_190 wl_191 wl_192 wl_193 wl_194 wl_195
+ wl_196 wl_197 wl_198 wl_199 wl_200 wl_201 wl_202 wl_203 wl_204 wl_205
+ wl_206 wl_207 wl_208 wl_209 wl_210 wl_211 wl_212 wl_213 wl_214 wl_215
+ wl_216 wl_217 wl_218 wl_219 wl_220 wl_221 wl_222 wl_223 wl_224 wl_225
+ wl_226 wl_227 wl_228 wl_229 wl_230 wl_231 wl_232 wl_233 wl_234 wl_235
+ wl_236 wl_237 wl_238 wl_239 wl_240 wl_241 wl_242 wl_243 wl_244 wl_245
+ wl_246 wl_247 wl_248 wl_249 wl_250 wl_251 wl_252 wl_253 wl_254 wl_255
+ wl_en vdd gnd
+ sram_32b_256_1rw_freepdk45_wordline_driver_array
Xrbl_driver
+ wl_en vdd rbl_wl vdd gnd
+ sram_32b_256_1rw_freepdk45_and2_dec_0
.ENDS sram_32b_256_1rw_freepdk45_port_address

.SUBCKT write_driver din bl br en vdd gnd
*inverters for enable and data input
minP bl_bar din vdd vdd pmos_vtg w=360.000000n l=50.000000n
minN bl_bar din gnd gnd nmos_vtg w=180.000000n l=50.000000n
moutP en_bar en vdd vdd pmos_vtg w=360.000000n l=50.000000n
moutN en_bar en gnd gnd nmos_vtg w=180.000000n l=50.000000n

*tristate for BL
mout0P int1 bl_bar vdd vdd pmos_vtg w=360.000000n l=50.000000n
mout0P2 bl en_bar int1 vdd pmos_vtg w=360.000000n l=50.000000n
mout0N bl en int2 gnd nmos_vtg w=180.000000n l=50.000000n
mout0N2 int2 bl_bar gnd gnd nmos_vtg w=180.000000n l=50.000000n

*tristate for BR
mout1P int3 din vdd vdd pmos_vtg w=360.000000n l=50.000000n
mout1P2 br en_bar int3 vdd pmos_vtg w=360.000000n l=50.000000n
mout1N br en int4 gnd nmos_vtg w=180.000000n l=50.000000n
mout1N2 int4 din gnd gnd nmos_vtg w=180.000000n l=50.000000n
.ENDS write_driver


.SUBCKT sram_32b_256_1rw_freepdk45_write_driver_array
+ data_0 data_1 data_2 data_3 data_4 data_5 data_6 data_7 data_8 data_9
+ data_10 data_11 data_12 data_13 data_14 data_15 data_16 data_17
+ data_18 data_19 data_20 data_21 data_22 data_23 data_24 data_25
+ data_26 data_27 data_28 data_29 data_30 data_31 bl_0 br_0 bl_1 br_1
+ bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8
+ bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14
+ bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20
+ br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25
+ bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31
+ br_31 en vdd gnd
* INPUT : data_0 
* INPUT : data_1 
* INPUT : data_2 
* INPUT : data_3 
* INPUT : data_4 
* INPUT : data_5 
* INPUT : data_6 
* INPUT : data_7 
* INPUT : data_8 
* INPUT : data_9 
* INPUT : data_10 
* INPUT : data_11 
* INPUT : data_12 
* INPUT : data_13 
* INPUT : data_14 
* INPUT : data_15 
* INPUT : data_16 
* INPUT : data_17 
* INPUT : data_18 
* INPUT : data_19 
* INPUT : data_20 
* INPUT : data_21 
* INPUT : data_22 
* INPUT : data_23 
* INPUT : data_24 
* INPUT : data_25 
* INPUT : data_26 
* INPUT : data_27 
* INPUT : data_28 
* INPUT : data_29 
* INPUT : data_30 
* INPUT : data_31 
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* OUTPUT: bl_3 
* OUTPUT: br_3 
* OUTPUT: bl_4 
* OUTPUT: br_4 
* OUTPUT: bl_5 
* OUTPUT: br_5 
* OUTPUT: bl_6 
* OUTPUT: br_6 
* OUTPUT: bl_7 
* OUTPUT: br_7 
* OUTPUT: bl_8 
* OUTPUT: br_8 
* OUTPUT: bl_9 
* OUTPUT: br_9 
* OUTPUT: bl_10 
* OUTPUT: br_10 
* OUTPUT: bl_11 
* OUTPUT: br_11 
* OUTPUT: bl_12 
* OUTPUT: br_12 
* OUTPUT: bl_13 
* OUTPUT: br_13 
* OUTPUT: bl_14 
* OUTPUT: br_14 
* OUTPUT: bl_15 
* OUTPUT: br_15 
* OUTPUT: bl_16 
* OUTPUT: br_16 
* OUTPUT: bl_17 
* OUTPUT: br_17 
* OUTPUT: bl_18 
* OUTPUT: br_18 
* OUTPUT: bl_19 
* OUTPUT: br_19 
* OUTPUT: bl_20 
* OUTPUT: br_20 
* OUTPUT: bl_21 
* OUTPUT: br_21 
* OUTPUT: bl_22 
* OUTPUT: br_22 
* OUTPUT: bl_23 
* OUTPUT: br_23 
* OUTPUT: bl_24 
* OUTPUT: br_24 
* OUTPUT: bl_25 
* OUTPUT: br_25 
* OUTPUT: bl_26 
* OUTPUT: br_26 
* OUTPUT: bl_27 
* OUTPUT: br_27 
* OUTPUT: bl_28 
* OUTPUT: br_28 
* OUTPUT: bl_29 
* OUTPUT: br_29 
* OUTPUT: bl_30 
* OUTPUT: br_30 
* OUTPUT: bl_31 
* OUTPUT: br_31 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* columns: 32
* word_size 32
Xwrite_driver0
+ data_0 bl_0 br_0 en vdd gnd
+ write_driver
Xwrite_driver1
+ data_1 bl_1 br_1 en vdd gnd
+ write_driver
Xwrite_driver2
+ data_2 bl_2 br_2 en vdd gnd
+ write_driver
Xwrite_driver3
+ data_3 bl_3 br_3 en vdd gnd
+ write_driver
Xwrite_driver4
+ data_4 bl_4 br_4 en vdd gnd
+ write_driver
Xwrite_driver5
+ data_5 bl_5 br_5 en vdd gnd
+ write_driver
Xwrite_driver6
+ data_6 bl_6 br_6 en vdd gnd
+ write_driver
Xwrite_driver7
+ data_7 bl_7 br_7 en vdd gnd
+ write_driver
Xwrite_driver8
+ data_8 bl_8 br_8 en vdd gnd
+ write_driver
Xwrite_driver9
+ data_9 bl_9 br_9 en vdd gnd
+ write_driver
Xwrite_driver10
+ data_10 bl_10 br_10 en vdd gnd
+ write_driver
Xwrite_driver11
+ data_11 bl_11 br_11 en vdd gnd
+ write_driver
Xwrite_driver12
+ data_12 bl_12 br_12 en vdd gnd
+ write_driver
Xwrite_driver13
+ data_13 bl_13 br_13 en vdd gnd
+ write_driver
Xwrite_driver14
+ data_14 bl_14 br_14 en vdd gnd
+ write_driver
Xwrite_driver15
+ data_15 bl_15 br_15 en vdd gnd
+ write_driver
Xwrite_driver16
+ data_16 bl_16 br_16 en vdd gnd
+ write_driver
Xwrite_driver17
+ data_17 bl_17 br_17 en vdd gnd
+ write_driver
Xwrite_driver18
+ data_18 bl_18 br_18 en vdd gnd
+ write_driver
Xwrite_driver19
+ data_19 bl_19 br_19 en vdd gnd
+ write_driver
Xwrite_driver20
+ data_20 bl_20 br_20 en vdd gnd
+ write_driver
Xwrite_driver21
+ data_21 bl_21 br_21 en vdd gnd
+ write_driver
Xwrite_driver22
+ data_22 bl_22 br_22 en vdd gnd
+ write_driver
Xwrite_driver23
+ data_23 bl_23 br_23 en vdd gnd
+ write_driver
Xwrite_driver24
+ data_24 bl_24 br_24 en vdd gnd
+ write_driver
Xwrite_driver25
+ data_25 bl_25 br_25 en vdd gnd
+ write_driver
Xwrite_driver26
+ data_26 bl_26 br_26 en vdd gnd
+ write_driver
Xwrite_driver27
+ data_27 bl_27 br_27 en vdd gnd
+ write_driver
Xwrite_driver28
+ data_28 bl_28 br_28 en vdd gnd
+ write_driver
Xwrite_driver29
+ data_29 bl_29 br_29 en vdd gnd
+ write_driver
Xwrite_driver30
+ data_30 bl_30 br_30 en vdd gnd
+ write_driver
Xwrite_driver31
+ data_31 bl_31 br_31 en vdd gnd
+ write_driver
.ENDS sram_32b_256_1rw_freepdk45_write_driver_array

.SUBCKT sram_32b_256_1rw_freepdk45_precharge_0
+ bl br en_bar vdd
* OUTPUT: bl 
* OUTPUT: br 
* INPUT : en_bar 
* POWER : vdd 
Mlower_pmos bl en_bar br vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mupper_pmos1 bl en_bar vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mupper_pmos2 br en_bar vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS sram_32b_256_1rw_freepdk45_precharge_0

.SUBCKT sram_32b_256_1rw_freepdk45_precharge_array
+ bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6
+ bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12
+ bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18
+ br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23
+ bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29
+ br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 en_bar vdd
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* OUTPUT: bl_3 
* OUTPUT: br_3 
* OUTPUT: bl_4 
* OUTPUT: br_4 
* OUTPUT: bl_5 
* OUTPUT: br_5 
* OUTPUT: bl_6 
* OUTPUT: br_6 
* OUTPUT: bl_7 
* OUTPUT: br_7 
* OUTPUT: bl_8 
* OUTPUT: br_8 
* OUTPUT: bl_9 
* OUTPUT: br_9 
* OUTPUT: bl_10 
* OUTPUT: br_10 
* OUTPUT: bl_11 
* OUTPUT: br_11 
* OUTPUT: bl_12 
* OUTPUT: br_12 
* OUTPUT: bl_13 
* OUTPUT: br_13 
* OUTPUT: bl_14 
* OUTPUT: br_14 
* OUTPUT: bl_15 
* OUTPUT: br_15 
* OUTPUT: bl_16 
* OUTPUT: br_16 
* OUTPUT: bl_17 
* OUTPUT: br_17 
* OUTPUT: bl_18 
* OUTPUT: br_18 
* OUTPUT: bl_19 
* OUTPUT: br_19 
* OUTPUT: bl_20 
* OUTPUT: br_20 
* OUTPUT: bl_21 
* OUTPUT: br_21 
* OUTPUT: bl_22 
* OUTPUT: br_22 
* OUTPUT: bl_23 
* OUTPUT: br_23 
* OUTPUT: bl_24 
* OUTPUT: br_24 
* OUTPUT: bl_25 
* OUTPUT: br_25 
* OUTPUT: bl_26 
* OUTPUT: br_26 
* OUTPUT: bl_27 
* OUTPUT: br_27 
* OUTPUT: bl_28 
* OUTPUT: br_28 
* OUTPUT: bl_29 
* OUTPUT: br_29 
* OUTPUT: bl_30 
* OUTPUT: br_30 
* OUTPUT: bl_31 
* OUTPUT: br_31 
* OUTPUT: bl_32 
* OUTPUT: br_32 
* INPUT : en_bar 
* POWER : vdd 
* cols: 33 size: 1 bl: bl br: br
Xpre_column_0
+ bl_0 br_0 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_1
+ bl_1 br_1 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_2
+ bl_2 br_2 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_3
+ bl_3 br_3 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_4
+ bl_4 br_4 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_5
+ bl_5 br_5 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_6
+ bl_6 br_6 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_7
+ bl_7 br_7 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_8
+ bl_8 br_8 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_9
+ bl_9 br_9 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_10
+ bl_10 br_10 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_11
+ bl_11 br_11 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_12
+ bl_12 br_12 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_13
+ bl_13 br_13 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_14
+ bl_14 br_14 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_15
+ bl_15 br_15 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_16
+ bl_16 br_16 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_17
+ bl_17 br_17 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_18
+ bl_18 br_18 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_19
+ bl_19 br_19 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_20
+ bl_20 br_20 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_21
+ bl_21 br_21 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_22
+ bl_22 br_22 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_23
+ bl_23 br_23 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_24
+ bl_24 br_24 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_25
+ bl_25 br_25 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_26
+ bl_26 br_26 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_27
+ bl_27 br_27 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_28
+ bl_28 br_28 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_29
+ bl_29 br_29 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_30
+ bl_30 br_30 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_31
+ bl_31 br_31 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
Xpre_column_32
+ bl_32 br_32 en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_0
.ENDS sram_32b_256_1rw_freepdk45_precharge_array

.SUBCKT sense_amp bl br dout en vdd gnd
M_1 dint net_1 vdd vdd pmos_vtg w=540.0n l=50.0n
M_3 net_1 dint vdd vdd pmos_vtg w=540.0n l=50.0n
M_2 dint net_1 net_2 gnd nmos_vtg w=270.0n l=50.0n
M_8 net_1 dint net_2 gnd nmos_vtg w=270.0n l=50.0n
M_5 bl en dint vdd pmos_vtg w=720.0n l=50.0n
M_6 br en net_1 vdd pmos_vtg w=720.0n l=50.0n
M_7 net_2 en gnd gnd nmos_vtg w=270.0n l=50.0n

M_9 dout_bar dint vdd vdd pmos_vtg w=180.0n l=50.0n
M_10 dout_bar dint gnd gnd nmos_vtg w=90.0n l=50.0n
M_11 dout dout_bar vdd vdd pmos_vtg w=540.0n l=50.0n
M_12 dout dout_bar gnd gnd nmos_vtg w=270.0n l=50.0n
.ENDS sense_amp


.SUBCKT sram_32b_256_1rw_freepdk45_sense_amp_array
+ data_0 bl_0 br_0 data_1 bl_1 br_1 data_2 bl_2 br_2 data_3 bl_3 br_3
+ data_4 bl_4 br_4 data_5 bl_5 br_5 data_6 bl_6 br_6 data_7 bl_7 br_7
+ data_8 bl_8 br_8 data_9 bl_9 br_9 data_10 bl_10 br_10 data_11 bl_11
+ br_11 data_12 bl_12 br_12 data_13 bl_13 br_13 data_14 bl_14 br_14
+ data_15 bl_15 br_15 data_16 bl_16 br_16 data_17 bl_17 br_17 data_18
+ bl_18 br_18 data_19 bl_19 br_19 data_20 bl_20 br_20 data_21 bl_21
+ br_21 data_22 bl_22 br_22 data_23 bl_23 br_23 data_24 bl_24 br_24
+ data_25 bl_25 br_25 data_26 bl_26 br_26 data_27 bl_27 br_27 data_28
+ bl_28 br_28 data_29 bl_29 br_29 data_30 bl_30 br_30 data_31 bl_31
+ br_31 en vdd gnd
* OUTPUT: data_0 
* INPUT : bl_0 
* INPUT : br_0 
* OUTPUT: data_1 
* INPUT : bl_1 
* INPUT : br_1 
* OUTPUT: data_2 
* INPUT : bl_2 
* INPUT : br_2 
* OUTPUT: data_3 
* INPUT : bl_3 
* INPUT : br_3 
* OUTPUT: data_4 
* INPUT : bl_4 
* INPUT : br_4 
* OUTPUT: data_5 
* INPUT : bl_5 
* INPUT : br_5 
* OUTPUT: data_6 
* INPUT : bl_6 
* INPUT : br_6 
* OUTPUT: data_7 
* INPUT : bl_7 
* INPUT : br_7 
* OUTPUT: data_8 
* INPUT : bl_8 
* INPUT : br_8 
* OUTPUT: data_9 
* INPUT : bl_9 
* INPUT : br_9 
* OUTPUT: data_10 
* INPUT : bl_10 
* INPUT : br_10 
* OUTPUT: data_11 
* INPUT : bl_11 
* INPUT : br_11 
* OUTPUT: data_12 
* INPUT : bl_12 
* INPUT : br_12 
* OUTPUT: data_13 
* INPUT : bl_13 
* INPUT : br_13 
* OUTPUT: data_14 
* INPUT : bl_14 
* INPUT : br_14 
* OUTPUT: data_15 
* INPUT : bl_15 
* INPUT : br_15 
* OUTPUT: data_16 
* INPUT : bl_16 
* INPUT : br_16 
* OUTPUT: data_17 
* INPUT : bl_17 
* INPUT : br_17 
* OUTPUT: data_18 
* INPUT : bl_18 
* INPUT : br_18 
* OUTPUT: data_19 
* INPUT : bl_19 
* INPUT : br_19 
* OUTPUT: data_20 
* INPUT : bl_20 
* INPUT : br_20 
* OUTPUT: data_21 
* INPUT : bl_21 
* INPUT : br_21 
* OUTPUT: data_22 
* INPUT : bl_22 
* INPUT : br_22 
* OUTPUT: data_23 
* INPUT : bl_23 
* INPUT : br_23 
* OUTPUT: data_24 
* INPUT : bl_24 
* INPUT : br_24 
* OUTPUT: data_25 
* INPUT : bl_25 
* INPUT : br_25 
* OUTPUT: data_26 
* INPUT : bl_26 
* INPUT : br_26 
* OUTPUT: data_27 
* INPUT : bl_27 
* INPUT : br_27 
* OUTPUT: data_28 
* INPUT : bl_28 
* INPUT : br_28 
* OUTPUT: data_29 
* INPUT : bl_29 
* INPUT : br_29 
* OUTPUT: data_30 
* INPUT : bl_30 
* INPUT : br_30 
* OUTPUT: data_31 
* INPUT : bl_31 
* INPUT : br_31 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* word_size 32
* words_per_row: 1
Xsa_d0
+ bl_0 br_0 data_0 en vdd gnd
+ sense_amp
Xsa_d1
+ bl_1 br_1 data_1 en vdd gnd
+ sense_amp
Xsa_d2
+ bl_2 br_2 data_2 en vdd gnd
+ sense_amp
Xsa_d3
+ bl_3 br_3 data_3 en vdd gnd
+ sense_amp
Xsa_d4
+ bl_4 br_4 data_4 en vdd gnd
+ sense_amp
Xsa_d5
+ bl_5 br_5 data_5 en vdd gnd
+ sense_amp
Xsa_d6
+ bl_6 br_6 data_6 en vdd gnd
+ sense_amp
Xsa_d7
+ bl_7 br_7 data_7 en vdd gnd
+ sense_amp
Xsa_d8
+ bl_8 br_8 data_8 en vdd gnd
+ sense_amp
Xsa_d9
+ bl_9 br_9 data_9 en vdd gnd
+ sense_amp
Xsa_d10
+ bl_10 br_10 data_10 en vdd gnd
+ sense_amp
Xsa_d11
+ bl_11 br_11 data_11 en vdd gnd
+ sense_amp
Xsa_d12
+ bl_12 br_12 data_12 en vdd gnd
+ sense_amp
Xsa_d13
+ bl_13 br_13 data_13 en vdd gnd
+ sense_amp
Xsa_d14
+ bl_14 br_14 data_14 en vdd gnd
+ sense_amp
Xsa_d15
+ bl_15 br_15 data_15 en vdd gnd
+ sense_amp
Xsa_d16
+ bl_16 br_16 data_16 en vdd gnd
+ sense_amp
Xsa_d17
+ bl_17 br_17 data_17 en vdd gnd
+ sense_amp
Xsa_d18
+ bl_18 br_18 data_18 en vdd gnd
+ sense_amp
Xsa_d19
+ bl_19 br_19 data_19 en vdd gnd
+ sense_amp
Xsa_d20
+ bl_20 br_20 data_20 en vdd gnd
+ sense_amp
Xsa_d21
+ bl_21 br_21 data_21 en vdd gnd
+ sense_amp
Xsa_d22
+ bl_22 br_22 data_22 en vdd gnd
+ sense_amp
Xsa_d23
+ bl_23 br_23 data_23 en vdd gnd
+ sense_amp
Xsa_d24
+ bl_24 br_24 data_24 en vdd gnd
+ sense_amp
Xsa_d25
+ bl_25 br_25 data_25 en vdd gnd
+ sense_amp
Xsa_d26
+ bl_26 br_26 data_26 en vdd gnd
+ sense_amp
Xsa_d27
+ bl_27 br_27 data_27 en vdd gnd
+ sense_amp
Xsa_d28
+ bl_28 br_28 data_28 en vdd gnd
+ sense_amp
Xsa_d29
+ bl_29 br_29 data_29 en vdd gnd
+ sense_amp
Xsa_d30
+ bl_30 br_30 data_30 en vdd gnd
+ sense_amp
Xsa_d31
+ bl_31 br_31 data_31 en vdd gnd
+ sense_amp
.ENDS sram_32b_256_1rw_freepdk45_sense_amp_array

.SUBCKT sram_32b_256_1rw_freepdk45_port_data
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5
+ br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11
+ bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17
+ br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22
+ bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28
+ br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 dout_0 dout_1 dout_2 dout_3
+ dout_4 dout_5 dout_6 dout_7 dout_8 dout_9 dout_10 dout_11 dout_12
+ dout_13 dout_14 dout_15 dout_16 dout_17 dout_18 dout_19 dout_20
+ dout_21 dout_22 dout_23 dout_24 dout_25 dout_26 dout_27 dout_28
+ dout_29 dout_30 dout_31 din_0 din_1 din_2 din_3 din_4 din_5 din_6
+ din_7 din_8 din_9 din_10 din_11 din_12 din_13 din_14 din_15 din_16
+ din_17 din_18 din_19 din_20 din_21 din_22 din_23 din_24 din_25 din_26
+ din_27 din_28 din_29 din_30 din_31 s_en p_en_bar w_en vdd gnd
* INOUT : rbl_bl 
* INOUT : rbl_br 
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* INOUT : bl_2 
* INOUT : br_2 
* INOUT : bl_3 
* INOUT : br_3 
* INOUT : bl_4 
* INOUT : br_4 
* INOUT : bl_5 
* INOUT : br_5 
* INOUT : bl_6 
* INOUT : br_6 
* INOUT : bl_7 
* INOUT : br_7 
* INOUT : bl_8 
* INOUT : br_8 
* INOUT : bl_9 
* INOUT : br_9 
* INOUT : bl_10 
* INOUT : br_10 
* INOUT : bl_11 
* INOUT : br_11 
* INOUT : bl_12 
* INOUT : br_12 
* INOUT : bl_13 
* INOUT : br_13 
* INOUT : bl_14 
* INOUT : br_14 
* INOUT : bl_15 
* INOUT : br_15 
* INOUT : bl_16 
* INOUT : br_16 
* INOUT : bl_17 
* INOUT : br_17 
* INOUT : bl_18 
* INOUT : br_18 
* INOUT : bl_19 
* INOUT : br_19 
* INOUT : bl_20 
* INOUT : br_20 
* INOUT : bl_21 
* INOUT : br_21 
* INOUT : bl_22 
* INOUT : br_22 
* INOUT : bl_23 
* INOUT : br_23 
* INOUT : bl_24 
* INOUT : br_24 
* INOUT : bl_25 
* INOUT : br_25 
* INOUT : bl_26 
* INOUT : br_26 
* INOUT : bl_27 
* INOUT : br_27 
* INOUT : bl_28 
* INOUT : br_28 
* INOUT : bl_29 
* INOUT : br_29 
* INOUT : bl_30 
* INOUT : br_30 
* INOUT : bl_31 
* INOUT : br_31 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* OUTPUT: dout_7 
* OUTPUT: dout_8 
* OUTPUT: dout_9 
* OUTPUT: dout_10 
* OUTPUT: dout_11 
* OUTPUT: dout_12 
* OUTPUT: dout_13 
* OUTPUT: dout_14 
* OUTPUT: dout_15 
* OUTPUT: dout_16 
* OUTPUT: dout_17 
* OUTPUT: dout_18 
* OUTPUT: dout_19 
* OUTPUT: dout_20 
* OUTPUT: dout_21 
* OUTPUT: dout_22 
* OUTPUT: dout_23 
* OUTPUT: dout_24 
* OUTPUT: dout_25 
* OUTPUT: dout_26 
* OUTPUT: dout_27 
* OUTPUT: dout_28 
* OUTPUT: dout_29 
* OUTPUT: dout_30 
* OUTPUT: dout_31 
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* INPUT : din_7 
* INPUT : din_8 
* INPUT : din_9 
* INPUT : din_10 
* INPUT : din_11 
* INPUT : din_12 
* INPUT : din_13 
* INPUT : din_14 
* INPUT : din_15 
* INPUT : din_16 
* INPUT : din_17 
* INPUT : din_18 
* INPUT : din_19 
* INPUT : din_20 
* INPUT : din_21 
* INPUT : din_22 
* INPUT : din_23 
* INPUT : din_24 
* INPUT : din_25 
* INPUT : din_26 
* INPUT : din_27 
* INPUT : din_28 
* INPUT : din_29 
* INPUT : din_30 
* INPUT : din_31 
* INPUT : s_en 
* INPUT : p_en_bar 
* INPUT : w_en 
* POWER : vdd 
* GROUND: gnd 
Xprecharge_array0
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5
+ br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11
+ bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17
+ br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22
+ bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28
+ br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 p_en_bar vdd
+ sram_32b_256_1rw_freepdk45_precharge_array
Xsense_amp_array0
+ dout_0 bl_0 br_0 dout_1 bl_1 br_1 dout_2 bl_2 br_2 dout_3 bl_3 br_3
+ dout_4 bl_4 br_4 dout_5 bl_5 br_5 dout_6 bl_6 br_6 dout_7 bl_7 br_7
+ dout_8 bl_8 br_8 dout_9 bl_9 br_9 dout_10 bl_10 br_10 dout_11 bl_11
+ br_11 dout_12 bl_12 br_12 dout_13 bl_13 br_13 dout_14 bl_14 br_14
+ dout_15 bl_15 br_15 dout_16 bl_16 br_16 dout_17 bl_17 br_17 dout_18
+ bl_18 br_18 dout_19 bl_19 br_19 dout_20 bl_20 br_20 dout_21 bl_21
+ br_21 dout_22 bl_22 br_22 dout_23 bl_23 br_23 dout_24 bl_24 br_24
+ dout_25 bl_25 br_25 dout_26 bl_26 br_26 dout_27 bl_27 br_27 dout_28
+ bl_28 br_28 dout_29 bl_29 br_29 dout_30 bl_30 br_30 dout_31 bl_31
+ br_31 s_en vdd gnd
+ sram_32b_256_1rw_freepdk45_sense_amp_array
Xwrite_driver_array0
+ din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10
+ din_11 din_12 din_13 din_14 din_15 din_16 din_17 din_18 din_19 din_20
+ din_21 din_22 din_23 din_24 din_25 din_26 din_27 din_28 din_29 din_30
+ din_31 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5
+ bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12
+ br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17
+ bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23
+ br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28
+ bl_29 br_29 bl_30 br_30 bl_31 br_31 w_en vdd gnd
+ sram_32b_256_1rw_freepdk45_write_driver_array
.ENDS sram_32b_256_1rw_freepdk45_port_data

.SUBCKT dummy_cell_1rw bl br wl vdd gnd
* Inverter 1
MM0 Q_bar Q gnd gnd NMOS_VTG W=205.00n L=50n
MM4 Q_bar Q vdd vdd PMOS_VTG W=90n L=50n

* Inverer 2
MM1 Q Q_bar gnd gnd NMOS_VTG W=205.00n L=50n
MM5 Q Q_bar vdd vdd PMOS_VTG W=90n L=50n

* Access transistors
MM3 bl_noconn wl Q gnd NMOS_VTG W=135.00n L=50n
MM2 br_noconn wl Q_bar gnd NMOS_VTG W=135.00n L=50n
.ENDS dummy_cell_1rw


.SUBCKT sram_32b_256_1rw_freepdk45_dummy_array_0
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32 wl_0_0 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INOUT : bl_0_24 
* INOUT : br_0_24 
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INOUT : bl_0_32 
* INOUT : br_0_32 
* INPUT : wl_0_0 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c1
+ bl_0_1 br_0_1 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c2
+ bl_0_2 br_0_2 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c3
+ bl_0_3 br_0_3 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c4
+ bl_0_4 br_0_4 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c5
+ bl_0_5 br_0_5 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c6
+ bl_0_6 br_0_6 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c7
+ bl_0_7 br_0_7 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c8
+ bl_0_8 br_0_8 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c9
+ bl_0_9 br_0_9 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c10
+ bl_0_10 br_0_10 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c11
+ bl_0_11 br_0_11 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c12
+ bl_0_12 br_0_12 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c13
+ bl_0_13 br_0_13 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c14
+ bl_0_14 br_0_14 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c15
+ bl_0_15 br_0_15 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c16
+ bl_0_16 br_0_16 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c17
+ bl_0_17 br_0_17 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c18
+ bl_0_18 br_0_18 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c19
+ bl_0_19 br_0_19 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c20
+ bl_0_20 br_0_20 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c21
+ bl_0_21 br_0_21 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c22
+ bl_0_22 br_0_22 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c23
+ bl_0_23 br_0_23 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c24
+ bl_0_24 br_0_24 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c25
+ bl_0_25 br_0_25 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c26
+ bl_0_26 br_0_26 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c27
+ bl_0_27 br_0_27 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c28
+ bl_0_28 br_0_28 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c29
+ bl_0_29 br_0_29 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c30
+ bl_0_30 br_0_30 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c31
+ bl_0_31 br_0_31 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c32
+ bl_0_32 br_0_32 wl_0_0 vdd gnd
+ dummy_cell_1rw
.ENDS sram_32b_256_1rw_freepdk45_dummy_array_0

.SUBCKT sram_32b_256_1rw_freepdk45_dummy_array_1
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32 wl_0_0 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INOUT : bl_0_24 
* INOUT : br_0_24 
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INOUT : bl_0_32 
* INOUT : br_0_32 
* INPUT : wl_0_0 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c1
+ bl_0_1 br_0_1 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c2
+ bl_0_2 br_0_2 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c3
+ bl_0_3 br_0_3 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c4
+ bl_0_4 br_0_4 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c5
+ bl_0_5 br_0_5 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c6
+ bl_0_6 br_0_6 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c7
+ bl_0_7 br_0_7 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c8
+ bl_0_8 br_0_8 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c9
+ bl_0_9 br_0_9 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c10
+ bl_0_10 br_0_10 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c11
+ bl_0_11 br_0_11 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c12
+ bl_0_12 br_0_12 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c13
+ bl_0_13 br_0_13 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c14
+ bl_0_14 br_0_14 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c15
+ bl_0_15 br_0_15 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c16
+ bl_0_16 br_0_16 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c17
+ bl_0_17 br_0_17 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c18
+ bl_0_18 br_0_18 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c19
+ bl_0_19 br_0_19 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c20
+ bl_0_20 br_0_20 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c21
+ bl_0_21 br_0_21 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c22
+ bl_0_22 br_0_22 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c23
+ bl_0_23 br_0_23 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c24
+ bl_0_24 br_0_24 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c25
+ bl_0_25 br_0_25 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c26
+ bl_0_26 br_0_26 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c27
+ bl_0_27 br_0_27 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c28
+ bl_0_28 br_0_28 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c29
+ bl_0_29 br_0_29 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c30
+ bl_0_30 br_0_30 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c31
+ bl_0_31 br_0_31 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c32
+ bl_0_32 br_0_32 wl_0_0 vdd gnd
+ dummy_cell_1rw
.ENDS sram_32b_256_1rw_freepdk45_dummy_array_1

.SUBCKT sram_32b_256_1rw_freepdk45_dummy_array_2
+ bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24
+ wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 wl_0_32
+ wl_0_33 wl_0_34 wl_0_35 wl_0_36 wl_0_37 wl_0_38 wl_0_39 wl_0_40
+ wl_0_41 wl_0_42 wl_0_43 wl_0_44 wl_0_45 wl_0_46 wl_0_47 wl_0_48
+ wl_0_49 wl_0_50 wl_0_51 wl_0_52 wl_0_53 wl_0_54 wl_0_55 wl_0_56
+ wl_0_57 wl_0_58 wl_0_59 wl_0_60 wl_0_61 wl_0_62 wl_0_63 wl_0_64
+ wl_0_65 wl_0_66 wl_0_67 wl_0_68 wl_0_69 wl_0_70 wl_0_71 wl_0_72
+ wl_0_73 wl_0_74 wl_0_75 wl_0_76 wl_0_77 wl_0_78 wl_0_79 wl_0_80
+ wl_0_81 wl_0_82 wl_0_83 wl_0_84 wl_0_85 wl_0_86 wl_0_87 wl_0_88
+ wl_0_89 wl_0_90 wl_0_91 wl_0_92 wl_0_93 wl_0_94 wl_0_95 wl_0_96
+ wl_0_97 wl_0_98 wl_0_99 wl_0_100 wl_0_101 wl_0_102 wl_0_103 wl_0_104
+ wl_0_105 wl_0_106 wl_0_107 wl_0_108 wl_0_109 wl_0_110 wl_0_111
+ wl_0_112 wl_0_113 wl_0_114 wl_0_115 wl_0_116 wl_0_117 wl_0_118
+ wl_0_119 wl_0_120 wl_0_121 wl_0_122 wl_0_123 wl_0_124 wl_0_125
+ wl_0_126 wl_0_127 wl_0_128 wl_0_129 wl_0_130 wl_0_131 wl_0_132
+ wl_0_133 wl_0_134 wl_0_135 wl_0_136 wl_0_137 wl_0_138 wl_0_139
+ wl_0_140 wl_0_141 wl_0_142 wl_0_143 wl_0_144 wl_0_145 wl_0_146
+ wl_0_147 wl_0_148 wl_0_149 wl_0_150 wl_0_151 wl_0_152 wl_0_153
+ wl_0_154 wl_0_155 wl_0_156 wl_0_157 wl_0_158 wl_0_159 wl_0_160
+ wl_0_161 wl_0_162 wl_0_163 wl_0_164 wl_0_165 wl_0_166 wl_0_167
+ wl_0_168 wl_0_169 wl_0_170 wl_0_171 wl_0_172 wl_0_173 wl_0_174
+ wl_0_175 wl_0_176 wl_0_177 wl_0_178 wl_0_179 wl_0_180 wl_0_181
+ wl_0_182 wl_0_183 wl_0_184 wl_0_185 wl_0_186 wl_0_187 wl_0_188
+ wl_0_189 wl_0_190 wl_0_191 wl_0_192 wl_0_193 wl_0_194 wl_0_195
+ wl_0_196 wl_0_197 wl_0_198 wl_0_199 wl_0_200 wl_0_201 wl_0_202
+ wl_0_203 wl_0_204 wl_0_205 wl_0_206 wl_0_207 wl_0_208 wl_0_209
+ wl_0_210 wl_0_211 wl_0_212 wl_0_213 wl_0_214 wl_0_215 wl_0_216
+ wl_0_217 wl_0_218 wl_0_219 wl_0_220 wl_0_221 wl_0_222 wl_0_223
+ wl_0_224 wl_0_225 wl_0_226 wl_0_227 wl_0_228 wl_0_229 wl_0_230
+ wl_0_231 wl_0_232 wl_0_233 wl_0_234 wl_0_235 wl_0_236 wl_0_237
+ wl_0_238 wl_0_239 wl_0_240 wl_0_241 wl_0_242 wl_0_243 wl_0_244
+ wl_0_245 wl_0_246 wl_0_247 wl_0_248 wl_0_249 wl_0_250 wl_0_251
+ wl_0_252 wl_0_253 wl_0_254 wl_0_255 wl_0_256 wl_0_257 wl_0_258 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* INPUT : wl_0_32 
* INPUT : wl_0_33 
* INPUT : wl_0_34 
* INPUT : wl_0_35 
* INPUT : wl_0_36 
* INPUT : wl_0_37 
* INPUT : wl_0_38 
* INPUT : wl_0_39 
* INPUT : wl_0_40 
* INPUT : wl_0_41 
* INPUT : wl_0_42 
* INPUT : wl_0_43 
* INPUT : wl_0_44 
* INPUT : wl_0_45 
* INPUT : wl_0_46 
* INPUT : wl_0_47 
* INPUT : wl_0_48 
* INPUT : wl_0_49 
* INPUT : wl_0_50 
* INPUT : wl_0_51 
* INPUT : wl_0_52 
* INPUT : wl_0_53 
* INPUT : wl_0_54 
* INPUT : wl_0_55 
* INPUT : wl_0_56 
* INPUT : wl_0_57 
* INPUT : wl_0_58 
* INPUT : wl_0_59 
* INPUT : wl_0_60 
* INPUT : wl_0_61 
* INPUT : wl_0_62 
* INPUT : wl_0_63 
* INPUT : wl_0_64 
* INPUT : wl_0_65 
* INPUT : wl_0_66 
* INPUT : wl_0_67 
* INPUT : wl_0_68 
* INPUT : wl_0_69 
* INPUT : wl_0_70 
* INPUT : wl_0_71 
* INPUT : wl_0_72 
* INPUT : wl_0_73 
* INPUT : wl_0_74 
* INPUT : wl_0_75 
* INPUT : wl_0_76 
* INPUT : wl_0_77 
* INPUT : wl_0_78 
* INPUT : wl_0_79 
* INPUT : wl_0_80 
* INPUT : wl_0_81 
* INPUT : wl_0_82 
* INPUT : wl_0_83 
* INPUT : wl_0_84 
* INPUT : wl_0_85 
* INPUT : wl_0_86 
* INPUT : wl_0_87 
* INPUT : wl_0_88 
* INPUT : wl_0_89 
* INPUT : wl_0_90 
* INPUT : wl_0_91 
* INPUT : wl_0_92 
* INPUT : wl_0_93 
* INPUT : wl_0_94 
* INPUT : wl_0_95 
* INPUT : wl_0_96 
* INPUT : wl_0_97 
* INPUT : wl_0_98 
* INPUT : wl_0_99 
* INPUT : wl_0_100 
* INPUT : wl_0_101 
* INPUT : wl_0_102 
* INPUT : wl_0_103 
* INPUT : wl_0_104 
* INPUT : wl_0_105 
* INPUT : wl_0_106 
* INPUT : wl_0_107 
* INPUT : wl_0_108 
* INPUT : wl_0_109 
* INPUT : wl_0_110 
* INPUT : wl_0_111 
* INPUT : wl_0_112 
* INPUT : wl_0_113 
* INPUT : wl_0_114 
* INPUT : wl_0_115 
* INPUT : wl_0_116 
* INPUT : wl_0_117 
* INPUT : wl_0_118 
* INPUT : wl_0_119 
* INPUT : wl_0_120 
* INPUT : wl_0_121 
* INPUT : wl_0_122 
* INPUT : wl_0_123 
* INPUT : wl_0_124 
* INPUT : wl_0_125 
* INPUT : wl_0_126 
* INPUT : wl_0_127 
* INPUT : wl_0_128 
* INPUT : wl_0_129 
* INPUT : wl_0_130 
* INPUT : wl_0_131 
* INPUT : wl_0_132 
* INPUT : wl_0_133 
* INPUT : wl_0_134 
* INPUT : wl_0_135 
* INPUT : wl_0_136 
* INPUT : wl_0_137 
* INPUT : wl_0_138 
* INPUT : wl_0_139 
* INPUT : wl_0_140 
* INPUT : wl_0_141 
* INPUT : wl_0_142 
* INPUT : wl_0_143 
* INPUT : wl_0_144 
* INPUT : wl_0_145 
* INPUT : wl_0_146 
* INPUT : wl_0_147 
* INPUT : wl_0_148 
* INPUT : wl_0_149 
* INPUT : wl_0_150 
* INPUT : wl_0_151 
* INPUT : wl_0_152 
* INPUT : wl_0_153 
* INPUT : wl_0_154 
* INPUT : wl_0_155 
* INPUT : wl_0_156 
* INPUT : wl_0_157 
* INPUT : wl_0_158 
* INPUT : wl_0_159 
* INPUT : wl_0_160 
* INPUT : wl_0_161 
* INPUT : wl_0_162 
* INPUT : wl_0_163 
* INPUT : wl_0_164 
* INPUT : wl_0_165 
* INPUT : wl_0_166 
* INPUT : wl_0_167 
* INPUT : wl_0_168 
* INPUT : wl_0_169 
* INPUT : wl_0_170 
* INPUT : wl_0_171 
* INPUT : wl_0_172 
* INPUT : wl_0_173 
* INPUT : wl_0_174 
* INPUT : wl_0_175 
* INPUT : wl_0_176 
* INPUT : wl_0_177 
* INPUT : wl_0_178 
* INPUT : wl_0_179 
* INPUT : wl_0_180 
* INPUT : wl_0_181 
* INPUT : wl_0_182 
* INPUT : wl_0_183 
* INPUT : wl_0_184 
* INPUT : wl_0_185 
* INPUT : wl_0_186 
* INPUT : wl_0_187 
* INPUT : wl_0_188 
* INPUT : wl_0_189 
* INPUT : wl_0_190 
* INPUT : wl_0_191 
* INPUT : wl_0_192 
* INPUT : wl_0_193 
* INPUT : wl_0_194 
* INPUT : wl_0_195 
* INPUT : wl_0_196 
* INPUT : wl_0_197 
* INPUT : wl_0_198 
* INPUT : wl_0_199 
* INPUT : wl_0_200 
* INPUT : wl_0_201 
* INPUT : wl_0_202 
* INPUT : wl_0_203 
* INPUT : wl_0_204 
* INPUT : wl_0_205 
* INPUT : wl_0_206 
* INPUT : wl_0_207 
* INPUT : wl_0_208 
* INPUT : wl_0_209 
* INPUT : wl_0_210 
* INPUT : wl_0_211 
* INPUT : wl_0_212 
* INPUT : wl_0_213 
* INPUT : wl_0_214 
* INPUT : wl_0_215 
* INPUT : wl_0_216 
* INPUT : wl_0_217 
* INPUT : wl_0_218 
* INPUT : wl_0_219 
* INPUT : wl_0_220 
* INPUT : wl_0_221 
* INPUT : wl_0_222 
* INPUT : wl_0_223 
* INPUT : wl_0_224 
* INPUT : wl_0_225 
* INPUT : wl_0_226 
* INPUT : wl_0_227 
* INPUT : wl_0_228 
* INPUT : wl_0_229 
* INPUT : wl_0_230 
* INPUT : wl_0_231 
* INPUT : wl_0_232 
* INPUT : wl_0_233 
* INPUT : wl_0_234 
* INPUT : wl_0_235 
* INPUT : wl_0_236 
* INPUT : wl_0_237 
* INPUT : wl_0_238 
* INPUT : wl_0_239 
* INPUT : wl_0_240 
* INPUT : wl_0_241 
* INPUT : wl_0_242 
* INPUT : wl_0_243 
* INPUT : wl_0_244 
* INPUT : wl_0_245 
* INPUT : wl_0_246 
* INPUT : wl_0_247 
* INPUT : wl_0_248 
* INPUT : wl_0_249 
* INPUT : wl_0_250 
* INPUT : wl_0_251 
* INPUT : wl_0_252 
* INPUT : wl_0_253 
* INPUT : wl_0_254 
* INPUT : wl_0_255 
* INPUT : wl_0_256 
* INPUT : wl_0_257 
* INPUT : wl_0_258 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r1_c0
+ bl_0_0 br_0_0 wl_0_1 vdd gnd
+ dummy_cell_1rw
Xbit_r2_c0
+ bl_0_0 br_0_0 wl_0_2 vdd gnd
+ dummy_cell_1rw
Xbit_r3_c0
+ bl_0_0 br_0_0 wl_0_3 vdd gnd
+ dummy_cell_1rw
Xbit_r4_c0
+ bl_0_0 br_0_0 wl_0_4 vdd gnd
+ dummy_cell_1rw
Xbit_r5_c0
+ bl_0_0 br_0_0 wl_0_5 vdd gnd
+ dummy_cell_1rw
Xbit_r6_c0
+ bl_0_0 br_0_0 wl_0_6 vdd gnd
+ dummy_cell_1rw
Xbit_r7_c0
+ bl_0_0 br_0_0 wl_0_7 vdd gnd
+ dummy_cell_1rw
Xbit_r8_c0
+ bl_0_0 br_0_0 wl_0_8 vdd gnd
+ dummy_cell_1rw
Xbit_r9_c0
+ bl_0_0 br_0_0 wl_0_9 vdd gnd
+ dummy_cell_1rw
Xbit_r10_c0
+ bl_0_0 br_0_0 wl_0_10 vdd gnd
+ dummy_cell_1rw
Xbit_r11_c0
+ bl_0_0 br_0_0 wl_0_11 vdd gnd
+ dummy_cell_1rw
Xbit_r12_c0
+ bl_0_0 br_0_0 wl_0_12 vdd gnd
+ dummy_cell_1rw
Xbit_r13_c0
+ bl_0_0 br_0_0 wl_0_13 vdd gnd
+ dummy_cell_1rw
Xbit_r14_c0
+ bl_0_0 br_0_0 wl_0_14 vdd gnd
+ dummy_cell_1rw
Xbit_r15_c0
+ bl_0_0 br_0_0 wl_0_15 vdd gnd
+ dummy_cell_1rw
Xbit_r16_c0
+ bl_0_0 br_0_0 wl_0_16 vdd gnd
+ dummy_cell_1rw
Xbit_r17_c0
+ bl_0_0 br_0_0 wl_0_17 vdd gnd
+ dummy_cell_1rw
Xbit_r18_c0
+ bl_0_0 br_0_0 wl_0_18 vdd gnd
+ dummy_cell_1rw
Xbit_r19_c0
+ bl_0_0 br_0_0 wl_0_19 vdd gnd
+ dummy_cell_1rw
Xbit_r20_c0
+ bl_0_0 br_0_0 wl_0_20 vdd gnd
+ dummy_cell_1rw
Xbit_r21_c0
+ bl_0_0 br_0_0 wl_0_21 vdd gnd
+ dummy_cell_1rw
Xbit_r22_c0
+ bl_0_0 br_0_0 wl_0_22 vdd gnd
+ dummy_cell_1rw
Xbit_r23_c0
+ bl_0_0 br_0_0 wl_0_23 vdd gnd
+ dummy_cell_1rw
Xbit_r24_c0
+ bl_0_0 br_0_0 wl_0_24 vdd gnd
+ dummy_cell_1rw
Xbit_r25_c0
+ bl_0_0 br_0_0 wl_0_25 vdd gnd
+ dummy_cell_1rw
Xbit_r26_c0
+ bl_0_0 br_0_0 wl_0_26 vdd gnd
+ dummy_cell_1rw
Xbit_r27_c0
+ bl_0_0 br_0_0 wl_0_27 vdd gnd
+ dummy_cell_1rw
Xbit_r28_c0
+ bl_0_0 br_0_0 wl_0_28 vdd gnd
+ dummy_cell_1rw
Xbit_r29_c0
+ bl_0_0 br_0_0 wl_0_29 vdd gnd
+ dummy_cell_1rw
Xbit_r30_c0
+ bl_0_0 br_0_0 wl_0_30 vdd gnd
+ dummy_cell_1rw
Xbit_r31_c0
+ bl_0_0 br_0_0 wl_0_31 vdd gnd
+ dummy_cell_1rw
Xbit_r32_c0
+ bl_0_0 br_0_0 wl_0_32 vdd gnd
+ dummy_cell_1rw
Xbit_r33_c0
+ bl_0_0 br_0_0 wl_0_33 vdd gnd
+ dummy_cell_1rw
Xbit_r34_c0
+ bl_0_0 br_0_0 wl_0_34 vdd gnd
+ dummy_cell_1rw
Xbit_r35_c0
+ bl_0_0 br_0_0 wl_0_35 vdd gnd
+ dummy_cell_1rw
Xbit_r36_c0
+ bl_0_0 br_0_0 wl_0_36 vdd gnd
+ dummy_cell_1rw
Xbit_r37_c0
+ bl_0_0 br_0_0 wl_0_37 vdd gnd
+ dummy_cell_1rw
Xbit_r38_c0
+ bl_0_0 br_0_0 wl_0_38 vdd gnd
+ dummy_cell_1rw
Xbit_r39_c0
+ bl_0_0 br_0_0 wl_0_39 vdd gnd
+ dummy_cell_1rw
Xbit_r40_c0
+ bl_0_0 br_0_0 wl_0_40 vdd gnd
+ dummy_cell_1rw
Xbit_r41_c0
+ bl_0_0 br_0_0 wl_0_41 vdd gnd
+ dummy_cell_1rw
Xbit_r42_c0
+ bl_0_0 br_0_0 wl_0_42 vdd gnd
+ dummy_cell_1rw
Xbit_r43_c0
+ bl_0_0 br_0_0 wl_0_43 vdd gnd
+ dummy_cell_1rw
Xbit_r44_c0
+ bl_0_0 br_0_0 wl_0_44 vdd gnd
+ dummy_cell_1rw
Xbit_r45_c0
+ bl_0_0 br_0_0 wl_0_45 vdd gnd
+ dummy_cell_1rw
Xbit_r46_c0
+ bl_0_0 br_0_0 wl_0_46 vdd gnd
+ dummy_cell_1rw
Xbit_r47_c0
+ bl_0_0 br_0_0 wl_0_47 vdd gnd
+ dummy_cell_1rw
Xbit_r48_c0
+ bl_0_0 br_0_0 wl_0_48 vdd gnd
+ dummy_cell_1rw
Xbit_r49_c0
+ bl_0_0 br_0_0 wl_0_49 vdd gnd
+ dummy_cell_1rw
Xbit_r50_c0
+ bl_0_0 br_0_0 wl_0_50 vdd gnd
+ dummy_cell_1rw
Xbit_r51_c0
+ bl_0_0 br_0_0 wl_0_51 vdd gnd
+ dummy_cell_1rw
Xbit_r52_c0
+ bl_0_0 br_0_0 wl_0_52 vdd gnd
+ dummy_cell_1rw
Xbit_r53_c0
+ bl_0_0 br_0_0 wl_0_53 vdd gnd
+ dummy_cell_1rw
Xbit_r54_c0
+ bl_0_0 br_0_0 wl_0_54 vdd gnd
+ dummy_cell_1rw
Xbit_r55_c0
+ bl_0_0 br_0_0 wl_0_55 vdd gnd
+ dummy_cell_1rw
Xbit_r56_c0
+ bl_0_0 br_0_0 wl_0_56 vdd gnd
+ dummy_cell_1rw
Xbit_r57_c0
+ bl_0_0 br_0_0 wl_0_57 vdd gnd
+ dummy_cell_1rw
Xbit_r58_c0
+ bl_0_0 br_0_0 wl_0_58 vdd gnd
+ dummy_cell_1rw
Xbit_r59_c0
+ bl_0_0 br_0_0 wl_0_59 vdd gnd
+ dummy_cell_1rw
Xbit_r60_c0
+ bl_0_0 br_0_0 wl_0_60 vdd gnd
+ dummy_cell_1rw
Xbit_r61_c0
+ bl_0_0 br_0_0 wl_0_61 vdd gnd
+ dummy_cell_1rw
Xbit_r62_c0
+ bl_0_0 br_0_0 wl_0_62 vdd gnd
+ dummy_cell_1rw
Xbit_r63_c0
+ bl_0_0 br_0_0 wl_0_63 vdd gnd
+ dummy_cell_1rw
Xbit_r64_c0
+ bl_0_0 br_0_0 wl_0_64 vdd gnd
+ dummy_cell_1rw
Xbit_r65_c0
+ bl_0_0 br_0_0 wl_0_65 vdd gnd
+ dummy_cell_1rw
Xbit_r66_c0
+ bl_0_0 br_0_0 wl_0_66 vdd gnd
+ dummy_cell_1rw
Xbit_r67_c0
+ bl_0_0 br_0_0 wl_0_67 vdd gnd
+ dummy_cell_1rw
Xbit_r68_c0
+ bl_0_0 br_0_0 wl_0_68 vdd gnd
+ dummy_cell_1rw
Xbit_r69_c0
+ bl_0_0 br_0_0 wl_0_69 vdd gnd
+ dummy_cell_1rw
Xbit_r70_c0
+ bl_0_0 br_0_0 wl_0_70 vdd gnd
+ dummy_cell_1rw
Xbit_r71_c0
+ bl_0_0 br_0_0 wl_0_71 vdd gnd
+ dummy_cell_1rw
Xbit_r72_c0
+ bl_0_0 br_0_0 wl_0_72 vdd gnd
+ dummy_cell_1rw
Xbit_r73_c0
+ bl_0_0 br_0_0 wl_0_73 vdd gnd
+ dummy_cell_1rw
Xbit_r74_c0
+ bl_0_0 br_0_0 wl_0_74 vdd gnd
+ dummy_cell_1rw
Xbit_r75_c0
+ bl_0_0 br_0_0 wl_0_75 vdd gnd
+ dummy_cell_1rw
Xbit_r76_c0
+ bl_0_0 br_0_0 wl_0_76 vdd gnd
+ dummy_cell_1rw
Xbit_r77_c0
+ bl_0_0 br_0_0 wl_0_77 vdd gnd
+ dummy_cell_1rw
Xbit_r78_c0
+ bl_0_0 br_0_0 wl_0_78 vdd gnd
+ dummy_cell_1rw
Xbit_r79_c0
+ bl_0_0 br_0_0 wl_0_79 vdd gnd
+ dummy_cell_1rw
Xbit_r80_c0
+ bl_0_0 br_0_0 wl_0_80 vdd gnd
+ dummy_cell_1rw
Xbit_r81_c0
+ bl_0_0 br_0_0 wl_0_81 vdd gnd
+ dummy_cell_1rw
Xbit_r82_c0
+ bl_0_0 br_0_0 wl_0_82 vdd gnd
+ dummy_cell_1rw
Xbit_r83_c0
+ bl_0_0 br_0_0 wl_0_83 vdd gnd
+ dummy_cell_1rw
Xbit_r84_c0
+ bl_0_0 br_0_0 wl_0_84 vdd gnd
+ dummy_cell_1rw
Xbit_r85_c0
+ bl_0_0 br_0_0 wl_0_85 vdd gnd
+ dummy_cell_1rw
Xbit_r86_c0
+ bl_0_0 br_0_0 wl_0_86 vdd gnd
+ dummy_cell_1rw
Xbit_r87_c0
+ bl_0_0 br_0_0 wl_0_87 vdd gnd
+ dummy_cell_1rw
Xbit_r88_c0
+ bl_0_0 br_0_0 wl_0_88 vdd gnd
+ dummy_cell_1rw
Xbit_r89_c0
+ bl_0_0 br_0_0 wl_0_89 vdd gnd
+ dummy_cell_1rw
Xbit_r90_c0
+ bl_0_0 br_0_0 wl_0_90 vdd gnd
+ dummy_cell_1rw
Xbit_r91_c0
+ bl_0_0 br_0_0 wl_0_91 vdd gnd
+ dummy_cell_1rw
Xbit_r92_c0
+ bl_0_0 br_0_0 wl_0_92 vdd gnd
+ dummy_cell_1rw
Xbit_r93_c0
+ bl_0_0 br_0_0 wl_0_93 vdd gnd
+ dummy_cell_1rw
Xbit_r94_c0
+ bl_0_0 br_0_0 wl_0_94 vdd gnd
+ dummy_cell_1rw
Xbit_r95_c0
+ bl_0_0 br_0_0 wl_0_95 vdd gnd
+ dummy_cell_1rw
Xbit_r96_c0
+ bl_0_0 br_0_0 wl_0_96 vdd gnd
+ dummy_cell_1rw
Xbit_r97_c0
+ bl_0_0 br_0_0 wl_0_97 vdd gnd
+ dummy_cell_1rw
Xbit_r98_c0
+ bl_0_0 br_0_0 wl_0_98 vdd gnd
+ dummy_cell_1rw
Xbit_r99_c0
+ bl_0_0 br_0_0 wl_0_99 vdd gnd
+ dummy_cell_1rw
Xbit_r100_c0
+ bl_0_0 br_0_0 wl_0_100 vdd gnd
+ dummy_cell_1rw
Xbit_r101_c0
+ bl_0_0 br_0_0 wl_0_101 vdd gnd
+ dummy_cell_1rw
Xbit_r102_c0
+ bl_0_0 br_0_0 wl_0_102 vdd gnd
+ dummy_cell_1rw
Xbit_r103_c0
+ bl_0_0 br_0_0 wl_0_103 vdd gnd
+ dummy_cell_1rw
Xbit_r104_c0
+ bl_0_0 br_0_0 wl_0_104 vdd gnd
+ dummy_cell_1rw
Xbit_r105_c0
+ bl_0_0 br_0_0 wl_0_105 vdd gnd
+ dummy_cell_1rw
Xbit_r106_c0
+ bl_0_0 br_0_0 wl_0_106 vdd gnd
+ dummy_cell_1rw
Xbit_r107_c0
+ bl_0_0 br_0_0 wl_0_107 vdd gnd
+ dummy_cell_1rw
Xbit_r108_c0
+ bl_0_0 br_0_0 wl_0_108 vdd gnd
+ dummy_cell_1rw
Xbit_r109_c0
+ bl_0_0 br_0_0 wl_0_109 vdd gnd
+ dummy_cell_1rw
Xbit_r110_c0
+ bl_0_0 br_0_0 wl_0_110 vdd gnd
+ dummy_cell_1rw
Xbit_r111_c0
+ bl_0_0 br_0_0 wl_0_111 vdd gnd
+ dummy_cell_1rw
Xbit_r112_c0
+ bl_0_0 br_0_0 wl_0_112 vdd gnd
+ dummy_cell_1rw
Xbit_r113_c0
+ bl_0_0 br_0_0 wl_0_113 vdd gnd
+ dummy_cell_1rw
Xbit_r114_c0
+ bl_0_0 br_0_0 wl_0_114 vdd gnd
+ dummy_cell_1rw
Xbit_r115_c0
+ bl_0_0 br_0_0 wl_0_115 vdd gnd
+ dummy_cell_1rw
Xbit_r116_c0
+ bl_0_0 br_0_0 wl_0_116 vdd gnd
+ dummy_cell_1rw
Xbit_r117_c0
+ bl_0_0 br_0_0 wl_0_117 vdd gnd
+ dummy_cell_1rw
Xbit_r118_c0
+ bl_0_0 br_0_0 wl_0_118 vdd gnd
+ dummy_cell_1rw
Xbit_r119_c0
+ bl_0_0 br_0_0 wl_0_119 vdd gnd
+ dummy_cell_1rw
Xbit_r120_c0
+ bl_0_0 br_0_0 wl_0_120 vdd gnd
+ dummy_cell_1rw
Xbit_r121_c0
+ bl_0_0 br_0_0 wl_0_121 vdd gnd
+ dummy_cell_1rw
Xbit_r122_c0
+ bl_0_0 br_0_0 wl_0_122 vdd gnd
+ dummy_cell_1rw
Xbit_r123_c0
+ bl_0_0 br_0_0 wl_0_123 vdd gnd
+ dummy_cell_1rw
Xbit_r124_c0
+ bl_0_0 br_0_0 wl_0_124 vdd gnd
+ dummy_cell_1rw
Xbit_r125_c0
+ bl_0_0 br_0_0 wl_0_125 vdd gnd
+ dummy_cell_1rw
Xbit_r126_c0
+ bl_0_0 br_0_0 wl_0_126 vdd gnd
+ dummy_cell_1rw
Xbit_r127_c0
+ bl_0_0 br_0_0 wl_0_127 vdd gnd
+ dummy_cell_1rw
Xbit_r128_c0
+ bl_0_0 br_0_0 wl_0_128 vdd gnd
+ dummy_cell_1rw
Xbit_r129_c0
+ bl_0_0 br_0_0 wl_0_129 vdd gnd
+ dummy_cell_1rw
Xbit_r130_c0
+ bl_0_0 br_0_0 wl_0_130 vdd gnd
+ dummy_cell_1rw
Xbit_r131_c0
+ bl_0_0 br_0_0 wl_0_131 vdd gnd
+ dummy_cell_1rw
Xbit_r132_c0
+ bl_0_0 br_0_0 wl_0_132 vdd gnd
+ dummy_cell_1rw
Xbit_r133_c0
+ bl_0_0 br_0_0 wl_0_133 vdd gnd
+ dummy_cell_1rw
Xbit_r134_c0
+ bl_0_0 br_0_0 wl_0_134 vdd gnd
+ dummy_cell_1rw
Xbit_r135_c0
+ bl_0_0 br_0_0 wl_0_135 vdd gnd
+ dummy_cell_1rw
Xbit_r136_c0
+ bl_0_0 br_0_0 wl_0_136 vdd gnd
+ dummy_cell_1rw
Xbit_r137_c0
+ bl_0_0 br_0_0 wl_0_137 vdd gnd
+ dummy_cell_1rw
Xbit_r138_c0
+ bl_0_0 br_0_0 wl_0_138 vdd gnd
+ dummy_cell_1rw
Xbit_r139_c0
+ bl_0_0 br_0_0 wl_0_139 vdd gnd
+ dummy_cell_1rw
Xbit_r140_c0
+ bl_0_0 br_0_0 wl_0_140 vdd gnd
+ dummy_cell_1rw
Xbit_r141_c0
+ bl_0_0 br_0_0 wl_0_141 vdd gnd
+ dummy_cell_1rw
Xbit_r142_c0
+ bl_0_0 br_0_0 wl_0_142 vdd gnd
+ dummy_cell_1rw
Xbit_r143_c0
+ bl_0_0 br_0_0 wl_0_143 vdd gnd
+ dummy_cell_1rw
Xbit_r144_c0
+ bl_0_0 br_0_0 wl_0_144 vdd gnd
+ dummy_cell_1rw
Xbit_r145_c0
+ bl_0_0 br_0_0 wl_0_145 vdd gnd
+ dummy_cell_1rw
Xbit_r146_c0
+ bl_0_0 br_0_0 wl_0_146 vdd gnd
+ dummy_cell_1rw
Xbit_r147_c0
+ bl_0_0 br_0_0 wl_0_147 vdd gnd
+ dummy_cell_1rw
Xbit_r148_c0
+ bl_0_0 br_0_0 wl_0_148 vdd gnd
+ dummy_cell_1rw
Xbit_r149_c0
+ bl_0_0 br_0_0 wl_0_149 vdd gnd
+ dummy_cell_1rw
Xbit_r150_c0
+ bl_0_0 br_0_0 wl_0_150 vdd gnd
+ dummy_cell_1rw
Xbit_r151_c0
+ bl_0_0 br_0_0 wl_0_151 vdd gnd
+ dummy_cell_1rw
Xbit_r152_c0
+ bl_0_0 br_0_0 wl_0_152 vdd gnd
+ dummy_cell_1rw
Xbit_r153_c0
+ bl_0_0 br_0_0 wl_0_153 vdd gnd
+ dummy_cell_1rw
Xbit_r154_c0
+ bl_0_0 br_0_0 wl_0_154 vdd gnd
+ dummy_cell_1rw
Xbit_r155_c0
+ bl_0_0 br_0_0 wl_0_155 vdd gnd
+ dummy_cell_1rw
Xbit_r156_c0
+ bl_0_0 br_0_0 wl_0_156 vdd gnd
+ dummy_cell_1rw
Xbit_r157_c0
+ bl_0_0 br_0_0 wl_0_157 vdd gnd
+ dummy_cell_1rw
Xbit_r158_c0
+ bl_0_0 br_0_0 wl_0_158 vdd gnd
+ dummy_cell_1rw
Xbit_r159_c0
+ bl_0_0 br_0_0 wl_0_159 vdd gnd
+ dummy_cell_1rw
Xbit_r160_c0
+ bl_0_0 br_0_0 wl_0_160 vdd gnd
+ dummy_cell_1rw
Xbit_r161_c0
+ bl_0_0 br_0_0 wl_0_161 vdd gnd
+ dummy_cell_1rw
Xbit_r162_c0
+ bl_0_0 br_0_0 wl_0_162 vdd gnd
+ dummy_cell_1rw
Xbit_r163_c0
+ bl_0_0 br_0_0 wl_0_163 vdd gnd
+ dummy_cell_1rw
Xbit_r164_c0
+ bl_0_0 br_0_0 wl_0_164 vdd gnd
+ dummy_cell_1rw
Xbit_r165_c0
+ bl_0_0 br_0_0 wl_0_165 vdd gnd
+ dummy_cell_1rw
Xbit_r166_c0
+ bl_0_0 br_0_0 wl_0_166 vdd gnd
+ dummy_cell_1rw
Xbit_r167_c0
+ bl_0_0 br_0_0 wl_0_167 vdd gnd
+ dummy_cell_1rw
Xbit_r168_c0
+ bl_0_0 br_0_0 wl_0_168 vdd gnd
+ dummy_cell_1rw
Xbit_r169_c0
+ bl_0_0 br_0_0 wl_0_169 vdd gnd
+ dummy_cell_1rw
Xbit_r170_c0
+ bl_0_0 br_0_0 wl_0_170 vdd gnd
+ dummy_cell_1rw
Xbit_r171_c0
+ bl_0_0 br_0_0 wl_0_171 vdd gnd
+ dummy_cell_1rw
Xbit_r172_c0
+ bl_0_0 br_0_0 wl_0_172 vdd gnd
+ dummy_cell_1rw
Xbit_r173_c0
+ bl_0_0 br_0_0 wl_0_173 vdd gnd
+ dummy_cell_1rw
Xbit_r174_c0
+ bl_0_0 br_0_0 wl_0_174 vdd gnd
+ dummy_cell_1rw
Xbit_r175_c0
+ bl_0_0 br_0_0 wl_0_175 vdd gnd
+ dummy_cell_1rw
Xbit_r176_c0
+ bl_0_0 br_0_0 wl_0_176 vdd gnd
+ dummy_cell_1rw
Xbit_r177_c0
+ bl_0_0 br_0_0 wl_0_177 vdd gnd
+ dummy_cell_1rw
Xbit_r178_c0
+ bl_0_0 br_0_0 wl_0_178 vdd gnd
+ dummy_cell_1rw
Xbit_r179_c0
+ bl_0_0 br_0_0 wl_0_179 vdd gnd
+ dummy_cell_1rw
Xbit_r180_c0
+ bl_0_0 br_0_0 wl_0_180 vdd gnd
+ dummy_cell_1rw
Xbit_r181_c0
+ bl_0_0 br_0_0 wl_0_181 vdd gnd
+ dummy_cell_1rw
Xbit_r182_c0
+ bl_0_0 br_0_0 wl_0_182 vdd gnd
+ dummy_cell_1rw
Xbit_r183_c0
+ bl_0_0 br_0_0 wl_0_183 vdd gnd
+ dummy_cell_1rw
Xbit_r184_c0
+ bl_0_0 br_0_0 wl_0_184 vdd gnd
+ dummy_cell_1rw
Xbit_r185_c0
+ bl_0_0 br_0_0 wl_0_185 vdd gnd
+ dummy_cell_1rw
Xbit_r186_c0
+ bl_0_0 br_0_0 wl_0_186 vdd gnd
+ dummy_cell_1rw
Xbit_r187_c0
+ bl_0_0 br_0_0 wl_0_187 vdd gnd
+ dummy_cell_1rw
Xbit_r188_c0
+ bl_0_0 br_0_0 wl_0_188 vdd gnd
+ dummy_cell_1rw
Xbit_r189_c0
+ bl_0_0 br_0_0 wl_0_189 vdd gnd
+ dummy_cell_1rw
Xbit_r190_c0
+ bl_0_0 br_0_0 wl_0_190 vdd gnd
+ dummy_cell_1rw
Xbit_r191_c0
+ bl_0_0 br_0_0 wl_0_191 vdd gnd
+ dummy_cell_1rw
Xbit_r192_c0
+ bl_0_0 br_0_0 wl_0_192 vdd gnd
+ dummy_cell_1rw
Xbit_r193_c0
+ bl_0_0 br_0_0 wl_0_193 vdd gnd
+ dummy_cell_1rw
Xbit_r194_c0
+ bl_0_0 br_0_0 wl_0_194 vdd gnd
+ dummy_cell_1rw
Xbit_r195_c0
+ bl_0_0 br_0_0 wl_0_195 vdd gnd
+ dummy_cell_1rw
Xbit_r196_c0
+ bl_0_0 br_0_0 wl_0_196 vdd gnd
+ dummy_cell_1rw
Xbit_r197_c0
+ bl_0_0 br_0_0 wl_0_197 vdd gnd
+ dummy_cell_1rw
Xbit_r198_c0
+ bl_0_0 br_0_0 wl_0_198 vdd gnd
+ dummy_cell_1rw
Xbit_r199_c0
+ bl_0_0 br_0_0 wl_0_199 vdd gnd
+ dummy_cell_1rw
Xbit_r200_c0
+ bl_0_0 br_0_0 wl_0_200 vdd gnd
+ dummy_cell_1rw
Xbit_r201_c0
+ bl_0_0 br_0_0 wl_0_201 vdd gnd
+ dummy_cell_1rw
Xbit_r202_c0
+ bl_0_0 br_0_0 wl_0_202 vdd gnd
+ dummy_cell_1rw
Xbit_r203_c0
+ bl_0_0 br_0_0 wl_0_203 vdd gnd
+ dummy_cell_1rw
Xbit_r204_c0
+ bl_0_0 br_0_0 wl_0_204 vdd gnd
+ dummy_cell_1rw
Xbit_r205_c0
+ bl_0_0 br_0_0 wl_0_205 vdd gnd
+ dummy_cell_1rw
Xbit_r206_c0
+ bl_0_0 br_0_0 wl_0_206 vdd gnd
+ dummy_cell_1rw
Xbit_r207_c0
+ bl_0_0 br_0_0 wl_0_207 vdd gnd
+ dummy_cell_1rw
Xbit_r208_c0
+ bl_0_0 br_0_0 wl_0_208 vdd gnd
+ dummy_cell_1rw
Xbit_r209_c0
+ bl_0_0 br_0_0 wl_0_209 vdd gnd
+ dummy_cell_1rw
Xbit_r210_c0
+ bl_0_0 br_0_0 wl_0_210 vdd gnd
+ dummy_cell_1rw
Xbit_r211_c0
+ bl_0_0 br_0_0 wl_0_211 vdd gnd
+ dummy_cell_1rw
Xbit_r212_c0
+ bl_0_0 br_0_0 wl_0_212 vdd gnd
+ dummy_cell_1rw
Xbit_r213_c0
+ bl_0_0 br_0_0 wl_0_213 vdd gnd
+ dummy_cell_1rw
Xbit_r214_c0
+ bl_0_0 br_0_0 wl_0_214 vdd gnd
+ dummy_cell_1rw
Xbit_r215_c0
+ bl_0_0 br_0_0 wl_0_215 vdd gnd
+ dummy_cell_1rw
Xbit_r216_c0
+ bl_0_0 br_0_0 wl_0_216 vdd gnd
+ dummy_cell_1rw
Xbit_r217_c0
+ bl_0_0 br_0_0 wl_0_217 vdd gnd
+ dummy_cell_1rw
Xbit_r218_c0
+ bl_0_0 br_0_0 wl_0_218 vdd gnd
+ dummy_cell_1rw
Xbit_r219_c0
+ bl_0_0 br_0_0 wl_0_219 vdd gnd
+ dummy_cell_1rw
Xbit_r220_c0
+ bl_0_0 br_0_0 wl_0_220 vdd gnd
+ dummy_cell_1rw
Xbit_r221_c0
+ bl_0_0 br_0_0 wl_0_221 vdd gnd
+ dummy_cell_1rw
Xbit_r222_c0
+ bl_0_0 br_0_0 wl_0_222 vdd gnd
+ dummy_cell_1rw
Xbit_r223_c0
+ bl_0_0 br_0_0 wl_0_223 vdd gnd
+ dummy_cell_1rw
Xbit_r224_c0
+ bl_0_0 br_0_0 wl_0_224 vdd gnd
+ dummy_cell_1rw
Xbit_r225_c0
+ bl_0_0 br_0_0 wl_0_225 vdd gnd
+ dummy_cell_1rw
Xbit_r226_c0
+ bl_0_0 br_0_0 wl_0_226 vdd gnd
+ dummy_cell_1rw
Xbit_r227_c0
+ bl_0_0 br_0_0 wl_0_227 vdd gnd
+ dummy_cell_1rw
Xbit_r228_c0
+ bl_0_0 br_0_0 wl_0_228 vdd gnd
+ dummy_cell_1rw
Xbit_r229_c0
+ bl_0_0 br_0_0 wl_0_229 vdd gnd
+ dummy_cell_1rw
Xbit_r230_c0
+ bl_0_0 br_0_0 wl_0_230 vdd gnd
+ dummy_cell_1rw
Xbit_r231_c0
+ bl_0_0 br_0_0 wl_0_231 vdd gnd
+ dummy_cell_1rw
Xbit_r232_c0
+ bl_0_0 br_0_0 wl_0_232 vdd gnd
+ dummy_cell_1rw
Xbit_r233_c0
+ bl_0_0 br_0_0 wl_0_233 vdd gnd
+ dummy_cell_1rw
Xbit_r234_c0
+ bl_0_0 br_0_0 wl_0_234 vdd gnd
+ dummy_cell_1rw
Xbit_r235_c0
+ bl_0_0 br_0_0 wl_0_235 vdd gnd
+ dummy_cell_1rw
Xbit_r236_c0
+ bl_0_0 br_0_0 wl_0_236 vdd gnd
+ dummy_cell_1rw
Xbit_r237_c0
+ bl_0_0 br_0_0 wl_0_237 vdd gnd
+ dummy_cell_1rw
Xbit_r238_c0
+ bl_0_0 br_0_0 wl_0_238 vdd gnd
+ dummy_cell_1rw
Xbit_r239_c0
+ bl_0_0 br_0_0 wl_0_239 vdd gnd
+ dummy_cell_1rw
Xbit_r240_c0
+ bl_0_0 br_0_0 wl_0_240 vdd gnd
+ dummy_cell_1rw
Xbit_r241_c0
+ bl_0_0 br_0_0 wl_0_241 vdd gnd
+ dummy_cell_1rw
Xbit_r242_c0
+ bl_0_0 br_0_0 wl_0_242 vdd gnd
+ dummy_cell_1rw
Xbit_r243_c0
+ bl_0_0 br_0_0 wl_0_243 vdd gnd
+ dummy_cell_1rw
Xbit_r244_c0
+ bl_0_0 br_0_0 wl_0_244 vdd gnd
+ dummy_cell_1rw
Xbit_r245_c0
+ bl_0_0 br_0_0 wl_0_245 vdd gnd
+ dummy_cell_1rw
Xbit_r246_c0
+ bl_0_0 br_0_0 wl_0_246 vdd gnd
+ dummy_cell_1rw
Xbit_r247_c0
+ bl_0_0 br_0_0 wl_0_247 vdd gnd
+ dummy_cell_1rw
Xbit_r248_c0
+ bl_0_0 br_0_0 wl_0_248 vdd gnd
+ dummy_cell_1rw
Xbit_r249_c0
+ bl_0_0 br_0_0 wl_0_249 vdd gnd
+ dummy_cell_1rw
Xbit_r250_c0
+ bl_0_0 br_0_0 wl_0_250 vdd gnd
+ dummy_cell_1rw
Xbit_r251_c0
+ bl_0_0 br_0_0 wl_0_251 vdd gnd
+ dummy_cell_1rw
Xbit_r252_c0
+ bl_0_0 br_0_0 wl_0_252 vdd gnd
+ dummy_cell_1rw
Xbit_r253_c0
+ bl_0_0 br_0_0 wl_0_253 vdd gnd
+ dummy_cell_1rw
Xbit_r254_c0
+ bl_0_0 br_0_0 wl_0_254 vdd gnd
+ dummy_cell_1rw
Xbit_r255_c0
+ bl_0_0 br_0_0 wl_0_255 vdd gnd
+ dummy_cell_1rw
Xbit_r256_c0
+ bl_0_0 br_0_0 wl_0_256 vdd gnd
+ dummy_cell_1rw
Xbit_r257_c0
+ bl_0_0 br_0_0 wl_0_257 vdd gnd
+ dummy_cell_1rw
Xbit_r258_c0
+ bl_0_0 br_0_0 wl_0_258 vdd gnd
+ dummy_cell_1rw
.ENDS sram_32b_256_1rw_freepdk45_dummy_array_2

.SUBCKT cell_1rw bl br wl vdd gnd
* Inverter 1
MM0 Q_bar Q gnd gnd NMOS_VTG W=205.00n L=50n
MM4 Q_bar Q vdd vdd PMOS_VTG W=90n L=50n

* Inverer 2
MM1 Q Q_bar gnd gnd NMOS_VTG W=205.00n L=50n
MM5 Q Q_bar vdd vdd PMOS_VTG W=90n L=50n

* Access transistors
MM3 bl wl Q gnd NMOS_VTG W=135.00n L=50n
MM2 br wl Q_bar gnd NMOS_VTG W=135.00n L=50n
.ENDS cell_1rw


.SUBCKT sram_32b_256_1rw_freepdk45_bitcell_array
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4
+ wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13
+ wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21
+ wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29
+ wl_0_30 wl_0_31 wl_0_32 wl_0_33 wl_0_34 wl_0_35 wl_0_36 wl_0_37
+ wl_0_38 wl_0_39 wl_0_40 wl_0_41 wl_0_42 wl_0_43 wl_0_44 wl_0_45
+ wl_0_46 wl_0_47 wl_0_48 wl_0_49 wl_0_50 wl_0_51 wl_0_52 wl_0_53
+ wl_0_54 wl_0_55 wl_0_56 wl_0_57 wl_0_58 wl_0_59 wl_0_60 wl_0_61
+ wl_0_62 wl_0_63 wl_0_64 wl_0_65 wl_0_66 wl_0_67 wl_0_68 wl_0_69
+ wl_0_70 wl_0_71 wl_0_72 wl_0_73 wl_0_74 wl_0_75 wl_0_76 wl_0_77
+ wl_0_78 wl_0_79 wl_0_80 wl_0_81 wl_0_82 wl_0_83 wl_0_84 wl_0_85
+ wl_0_86 wl_0_87 wl_0_88 wl_0_89 wl_0_90 wl_0_91 wl_0_92 wl_0_93
+ wl_0_94 wl_0_95 wl_0_96 wl_0_97 wl_0_98 wl_0_99 wl_0_100 wl_0_101
+ wl_0_102 wl_0_103 wl_0_104 wl_0_105 wl_0_106 wl_0_107 wl_0_108
+ wl_0_109 wl_0_110 wl_0_111 wl_0_112 wl_0_113 wl_0_114 wl_0_115
+ wl_0_116 wl_0_117 wl_0_118 wl_0_119 wl_0_120 wl_0_121 wl_0_122
+ wl_0_123 wl_0_124 wl_0_125 wl_0_126 wl_0_127 wl_0_128 wl_0_129
+ wl_0_130 wl_0_131 wl_0_132 wl_0_133 wl_0_134 wl_0_135 wl_0_136
+ wl_0_137 wl_0_138 wl_0_139 wl_0_140 wl_0_141 wl_0_142 wl_0_143
+ wl_0_144 wl_0_145 wl_0_146 wl_0_147 wl_0_148 wl_0_149 wl_0_150
+ wl_0_151 wl_0_152 wl_0_153 wl_0_154 wl_0_155 wl_0_156 wl_0_157
+ wl_0_158 wl_0_159 wl_0_160 wl_0_161 wl_0_162 wl_0_163 wl_0_164
+ wl_0_165 wl_0_166 wl_0_167 wl_0_168 wl_0_169 wl_0_170 wl_0_171
+ wl_0_172 wl_0_173 wl_0_174 wl_0_175 wl_0_176 wl_0_177 wl_0_178
+ wl_0_179 wl_0_180 wl_0_181 wl_0_182 wl_0_183 wl_0_184 wl_0_185
+ wl_0_186 wl_0_187 wl_0_188 wl_0_189 wl_0_190 wl_0_191 wl_0_192
+ wl_0_193 wl_0_194 wl_0_195 wl_0_196 wl_0_197 wl_0_198 wl_0_199
+ wl_0_200 wl_0_201 wl_0_202 wl_0_203 wl_0_204 wl_0_205 wl_0_206
+ wl_0_207 wl_0_208 wl_0_209 wl_0_210 wl_0_211 wl_0_212 wl_0_213
+ wl_0_214 wl_0_215 wl_0_216 wl_0_217 wl_0_218 wl_0_219 wl_0_220
+ wl_0_221 wl_0_222 wl_0_223 wl_0_224 wl_0_225 wl_0_226 wl_0_227
+ wl_0_228 wl_0_229 wl_0_230 wl_0_231 wl_0_232 wl_0_233 wl_0_234
+ wl_0_235 wl_0_236 wl_0_237 wl_0_238 wl_0_239 wl_0_240 wl_0_241
+ wl_0_242 wl_0_243 wl_0_244 wl_0_245 wl_0_246 wl_0_247 wl_0_248
+ wl_0_249 wl_0_250 wl_0_251 wl_0_252 wl_0_253 wl_0_254 wl_0_255 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INOUT : bl_0_24 
* INOUT : br_0_24 
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* INPUT : wl_0_32 
* INPUT : wl_0_33 
* INPUT : wl_0_34 
* INPUT : wl_0_35 
* INPUT : wl_0_36 
* INPUT : wl_0_37 
* INPUT : wl_0_38 
* INPUT : wl_0_39 
* INPUT : wl_0_40 
* INPUT : wl_0_41 
* INPUT : wl_0_42 
* INPUT : wl_0_43 
* INPUT : wl_0_44 
* INPUT : wl_0_45 
* INPUT : wl_0_46 
* INPUT : wl_0_47 
* INPUT : wl_0_48 
* INPUT : wl_0_49 
* INPUT : wl_0_50 
* INPUT : wl_0_51 
* INPUT : wl_0_52 
* INPUT : wl_0_53 
* INPUT : wl_0_54 
* INPUT : wl_0_55 
* INPUT : wl_0_56 
* INPUT : wl_0_57 
* INPUT : wl_0_58 
* INPUT : wl_0_59 
* INPUT : wl_0_60 
* INPUT : wl_0_61 
* INPUT : wl_0_62 
* INPUT : wl_0_63 
* INPUT : wl_0_64 
* INPUT : wl_0_65 
* INPUT : wl_0_66 
* INPUT : wl_0_67 
* INPUT : wl_0_68 
* INPUT : wl_0_69 
* INPUT : wl_0_70 
* INPUT : wl_0_71 
* INPUT : wl_0_72 
* INPUT : wl_0_73 
* INPUT : wl_0_74 
* INPUT : wl_0_75 
* INPUT : wl_0_76 
* INPUT : wl_0_77 
* INPUT : wl_0_78 
* INPUT : wl_0_79 
* INPUT : wl_0_80 
* INPUT : wl_0_81 
* INPUT : wl_0_82 
* INPUT : wl_0_83 
* INPUT : wl_0_84 
* INPUT : wl_0_85 
* INPUT : wl_0_86 
* INPUT : wl_0_87 
* INPUT : wl_0_88 
* INPUT : wl_0_89 
* INPUT : wl_0_90 
* INPUT : wl_0_91 
* INPUT : wl_0_92 
* INPUT : wl_0_93 
* INPUT : wl_0_94 
* INPUT : wl_0_95 
* INPUT : wl_0_96 
* INPUT : wl_0_97 
* INPUT : wl_0_98 
* INPUT : wl_0_99 
* INPUT : wl_0_100 
* INPUT : wl_0_101 
* INPUT : wl_0_102 
* INPUT : wl_0_103 
* INPUT : wl_0_104 
* INPUT : wl_0_105 
* INPUT : wl_0_106 
* INPUT : wl_0_107 
* INPUT : wl_0_108 
* INPUT : wl_0_109 
* INPUT : wl_0_110 
* INPUT : wl_0_111 
* INPUT : wl_0_112 
* INPUT : wl_0_113 
* INPUT : wl_0_114 
* INPUT : wl_0_115 
* INPUT : wl_0_116 
* INPUT : wl_0_117 
* INPUT : wl_0_118 
* INPUT : wl_0_119 
* INPUT : wl_0_120 
* INPUT : wl_0_121 
* INPUT : wl_0_122 
* INPUT : wl_0_123 
* INPUT : wl_0_124 
* INPUT : wl_0_125 
* INPUT : wl_0_126 
* INPUT : wl_0_127 
* INPUT : wl_0_128 
* INPUT : wl_0_129 
* INPUT : wl_0_130 
* INPUT : wl_0_131 
* INPUT : wl_0_132 
* INPUT : wl_0_133 
* INPUT : wl_0_134 
* INPUT : wl_0_135 
* INPUT : wl_0_136 
* INPUT : wl_0_137 
* INPUT : wl_0_138 
* INPUT : wl_0_139 
* INPUT : wl_0_140 
* INPUT : wl_0_141 
* INPUT : wl_0_142 
* INPUT : wl_0_143 
* INPUT : wl_0_144 
* INPUT : wl_0_145 
* INPUT : wl_0_146 
* INPUT : wl_0_147 
* INPUT : wl_0_148 
* INPUT : wl_0_149 
* INPUT : wl_0_150 
* INPUT : wl_0_151 
* INPUT : wl_0_152 
* INPUT : wl_0_153 
* INPUT : wl_0_154 
* INPUT : wl_0_155 
* INPUT : wl_0_156 
* INPUT : wl_0_157 
* INPUT : wl_0_158 
* INPUT : wl_0_159 
* INPUT : wl_0_160 
* INPUT : wl_0_161 
* INPUT : wl_0_162 
* INPUT : wl_0_163 
* INPUT : wl_0_164 
* INPUT : wl_0_165 
* INPUT : wl_0_166 
* INPUT : wl_0_167 
* INPUT : wl_0_168 
* INPUT : wl_0_169 
* INPUT : wl_0_170 
* INPUT : wl_0_171 
* INPUT : wl_0_172 
* INPUT : wl_0_173 
* INPUT : wl_0_174 
* INPUT : wl_0_175 
* INPUT : wl_0_176 
* INPUT : wl_0_177 
* INPUT : wl_0_178 
* INPUT : wl_0_179 
* INPUT : wl_0_180 
* INPUT : wl_0_181 
* INPUT : wl_0_182 
* INPUT : wl_0_183 
* INPUT : wl_0_184 
* INPUT : wl_0_185 
* INPUT : wl_0_186 
* INPUT : wl_0_187 
* INPUT : wl_0_188 
* INPUT : wl_0_189 
* INPUT : wl_0_190 
* INPUT : wl_0_191 
* INPUT : wl_0_192 
* INPUT : wl_0_193 
* INPUT : wl_0_194 
* INPUT : wl_0_195 
* INPUT : wl_0_196 
* INPUT : wl_0_197 
* INPUT : wl_0_198 
* INPUT : wl_0_199 
* INPUT : wl_0_200 
* INPUT : wl_0_201 
* INPUT : wl_0_202 
* INPUT : wl_0_203 
* INPUT : wl_0_204 
* INPUT : wl_0_205 
* INPUT : wl_0_206 
* INPUT : wl_0_207 
* INPUT : wl_0_208 
* INPUT : wl_0_209 
* INPUT : wl_0_210 
* INPUT : wl_0_211 
* INPUT : wl_0_212 
* INPUT : wl_0_213 
* INPUT : wl_0_214 
* INPUT : wl_0_215 
* INPUT : wl_0_216 
* INPUT : wl_0_217 
* INPUT : wl_0_218 
* INPUT : wl_0_219 
* INPUT : wl_0_220 
* INPUT : wl_0_221 
* INPUT : wl_0_222 
* INPUT : wl_0_223 
* INPUT : wl_0_224 
* INPUT : wl_0_225 
* INPUT : wl_0_226 
* INPUT : wl_0_227 
* INPUT : wl_0_228 
* INPUT : wl_0_229 
* INPUT : wl_0_230 
* INPUT : wl_0_231 
* INPUT : wl_0_232 
* INPUT : wl_0_233 
* INPUT : wl_0_234 
* INPUT : wl_0_235 
* INPUT : wl_0_236 
* INPUT : wl_0_237 
* INPUT : wl_0_238 
* INPUT : wl_0_239 
* INPUT : wl_0_240 
* INPUT : wl_0_241 
* INPUT : wl_0_242 
* INPUT : wl_0_243 
* INPUT : wl_0_244 
* INPUT : wl_0_245 
* INPUT : wl_0_246 
* INPUT : wl_0_247 
* INPUT : wl_0_248 
* INPUT : wl_0_249 
* INPUT : wl_0_250 
* INPUT : wl_0_251 
* INPUT : wl_0_252 
* INPUT : wl_0_253 
* INPUT : wl_0_254 
* INPUT : wl_0_255 
* POWER : vdd 
* GROUND: gnd 
* rows: 256 cols: 32
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c0
+ bl_0_0 br_0_0 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c0
+ bl_0_0 br_0_0 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c0
+ bl_0_0 br_0_0 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c0
+ bl_0_0 br_0_0 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c0
+ bl_0_0 br_0_0 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c0
+ bl_0_0 br_0_0 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c0
+ bl_0_0 br_0_0 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c0
+ bl_0_0 br_0_0 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c0
+ bl_0_0 br_0_0 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c0
+ bl_0_0 br_0_0 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c0
+ bl_0_0 br_0_0 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c0
+ bl_0_0 br_0_0 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c0
+ bl_0_0 br_0_0 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c0
+ bl_0_0 br_0_0 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c0
+ bl_0_0 br_0_0 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c0
+ bl_0_0 br_0_0 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c0
+ bl_0_0 br_0_0 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c0
+ bl_0_0 br_0_0 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c0
+ bl_0_0 br_0_0 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c0
+ bl_0_0 br_0_0 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c0
+ bl_0_0 br_0_0 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c0
+ bl_0_0 br_0_0 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c0
+ bl_0_0 br_0_0 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c0
+ bl_0_0 br_0_0 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c0
+ bl_0_0 br_0_0 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c0
+ bl_0_0 br_0_0 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c0
+ bl_0_0 br_0_0 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c0
+ bl_0_0 br_0_0 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c0
+ bl_0_0 br_0_0 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c0
+ bl_0_0 br_0_0 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c0
+ bl_0_0 br_0_0 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c0
+ bl_0_0 br_0_0 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c0
+ bl_0_0 br_0_0 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c0
+ bl_0_0 br_0_0 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c0
+ bl_0_0 br_0_0 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c0
+ bl_0_0 br_0_0 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c0
+ bl_0_0 br_0_0 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c0
+ bl_0_0 br_0_0 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c0
+ bl_0_0 br_0_0 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c0
+ bl_0_0 br_0_0 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c0
+ bl_0_0 br_0_0 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c0
+ bl_0_0 br_0_0 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c0
+ bl_0_0 br_0_0 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c0
+ bl_0_0 br_0_0 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c0
+ bl_0_0 br_0_0 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c0
+ bl_0_0 br_0_0 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c0
+ bl_0_0 br_0_0 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c0
+ bl_0_0 br_0_0 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c0
+ bl_0_0 br_0_0 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c0
+ bl_0_0 br_0_0 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c0
+ bl_0_0 br_0_0 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c0
+ bl_0_0 br_0_0 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c0
+ bl_0_0 br_0_0 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c0
+ bl_0_0 br_0_0 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c0
+ bl_0_0 br_0_0 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c0
+ bl_0_0 br_0_0 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c0
+ bl_0_0 br_0_0 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c0
+ bl_0_0 br_0_0 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c0
+ bl_0_0 br_0_0 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c0
+ bl_0_0 br_0_0 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c0
+ bl_0_0 br_0_0 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c0
+ bl_0_0 br_0_0 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c0
+ bl_0_0 br_0_0 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c0
+ bl_0_0 br_0_0 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c0
+ bl_0_0 br_0_0 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c0
+ bl_0_0 br_0_0 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c0
+ bl_0_0 br_0_0 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c0
+ bl_0_0 br_0_0 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c0
+ bl_0_0 br_0_0 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c0
+ bl_0_0 br_0_0 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c0
+ bl_0_0 br_0_0 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c0
+ bl_0_0 br_0_0 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c0
+ bl_0_0 br_0_0 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c0
+ bl_0_0 br_0_0 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c0
+ bl_0_0 br_0_0 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c0
+ bl_0_0 br_0_0 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c0
+ bl_0_0 br_0_0 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c0
+ bl_0_0 br_0_0 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c0
+ bl_0_0 br_0_0 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c0
+ bl_0_0 br_0_0 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c0
+ bl_0_0 br_0_0 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c0
+ bl_0_0 br_0_0 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c0
+ bl_0_0 br_0_0 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c0
+ bl_0_0 br_0_0 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c0
+ bl_0_0 br_0_0 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c0
+ bl_0_0 br_0_0 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c0
+ bl_0_0 br_0_0 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c0
+ bl_0_0 br_0_0 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c0
+ bl_0_0 br_0_0 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c0
+ bl_0_0 br_0_0 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c0
+ bl_0_0 br_0_0 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c0
+ bl_0_0 br_0_0 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c0
+ bl_0_0 br_0_0 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c0
+ bl_0_0 br_0_0 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c0
+ bl_0_0 br_0_0 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c0
+ bl_0_0 br_0_0 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c0
+ bl_0_0 br_0_0 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c0
+ bl_0_0 br_0_0 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c0
+ bl_0_0 br_0_0 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c0
+ bl_0_0 br_0_0 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c0
+ bl_0_0 br_0_0 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c0
+ bl_0_0 br_0_0 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c0
+ bl_0_0 br_0_0 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c0
+ bl_0_0 br_0_0 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c0
+ bl_0_0 br_0_0 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c0
+ bl_0_0 br_0_0 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c0
+ bl_0_0 br_0_0 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c0
+ bl_0_0 br_0_0 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c0
+ bl_0_0 br_0_0 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c0
+ bl_0_0 br_0_0 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c0
+ bl_0_0 br_0_0 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c0
+ bl_0_0 br_0_0 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c0
+ bl_0_0 br_0_0 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c0
+ bl_0_0 br_0_0 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c0
+ bl_0_0 br_0_0 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c0
+ bl_0_0 br_0_0 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c0
+ bl_0_0 br_0_0 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c0
+ bl_0_0 br_0_0 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c0
+ bl_0_0 br_0_0 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c0
+ bl_0_0 br_0_0 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c0
+ bl_0_0 br_0_0 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c0
+ bl_0_0 br_0_0 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c0
+ bl_0_0 br_0_0 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c0
+ bl_0_0 br_0_0 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c0
+ bl_0_0 br_0_0 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c0
+ bl_0_0 br_0_0 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c0
+ bl_0_0 br_0_0 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c0
+ bl_0_0 br_0_0 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c0
+ bl_0_0 br_0_0 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c0
+ bl_0_0 br_0_0 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c0
+ bl_0_0 br_0_0 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c0
+ bl_0_0 br_0_0 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c0
+ bl_0_0 br_0_0 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c0
+ bl_0_0 br_0_0 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c0
+ bl_0_0 br_0_0 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c0
+ bl_0_0 br_0_0 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c0
+ bl_0_0 br_0_0 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c0
+ bl_0_0 br_0_0 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c0
+ bl_0_0 br_0_0 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c0
+ bl_0_0 br_0_0 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c0
+ bl_0_0 br_0_0 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c0
+ bl_0_0 br_0_0 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c0
+ bl_0_0 br_0_0 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c0
+ bl_0_0 br_0_0 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c0
+ bl_0_0 br_0_0 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c0
+ bl_0_0 br_0_0 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c0
+ bl_0_0 br_0_0 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c0
+ bl_0_0 br_0_0 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c0
+ bl_0_0 br_0_0 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c0
+ bl_0_0 br_0_0 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c0
+ bl_0_0 br_0_0 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c0
+ bl_0_0 br_0_0 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c0
+ bl_0_0 br_0_0 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c0
+ bl_0_0 br_0_0 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c0
+ bl_0_0 br_0_0 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c0
+ bl_0_0 br_0_0 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c0
+ bl_0_0 br_0_0 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c0
+ bl_0_0 br_0_0 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c0
+ bl_0_0 br_0_0 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c0
+ bl_0_0 br_0_0 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c0
+ bl_0_0 br_0_0 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c0
+ bl_0_0 br_0_0 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c0
+ bl_0_0 br_0_0 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c0
+ bl_0_0 br_0_0 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c0
+ bl_0_0 br_0_0 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c0
+ bl_0_0 br_0_0 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c0
+ bl_0_0 br_0_0 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c0
+ bl_0_0 br_0_0 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c0
+ bl_0_0 br_0_0 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c0
+ bl_0_0 br_0_0 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c0
+ bl_0_0 br_0_0 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c0
+ bl_0_0 br_0_0 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c0
+ bl_0_0 br_0_0 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c0
+ bl_0_0 br_0_0 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c0
+ bl_0_0 br_0_0 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c0
+ bl_0_0 br_0_0 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c0
+ bl_0_0 br_0_0 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c0
+ bl_0_0 br_0_0 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c0
+ bl_0_0 br_0_0 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c0
+ bl_0_0 br_0_0 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c0
+ bl_0_0 br_0_0 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c0
+ bl_0_0 br_0_0 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c0
+ bl_0_0 br_0_0 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c0
+ bl_0_0 br_0_0 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c0
+ bl_0_0 br_0_0 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c0
+ bl_0_0 br_0_0 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c0
+ bl_0_0 br_0_0 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c0
+ bl_0_0 br_0_0 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c0
+ bl_0_0 br_0_0 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c0
+ bl_0_0 br_0_0 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c0
+ bl_0_0 br_0_0 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c0
+ bl_0_0 br_0_0 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c0
+ bl_0_0 br_0_0 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c0
+ bl_0_0 br_0_0 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c0
+ bl_0_0 br_0_0 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c0
+ bl_0_0 br_0_0 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c0
+ bl_0_0 br_0_0 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c0
+ bl_0_0 br_0_0 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c0
+ bl_0_0 br_0_0 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c0
+ bl_0_0 br_0_0 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c0
+ bl_0_0 br_0_0 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c0
+ bl_0_0 br_0_0 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c0
+ bl_0_0 br_0_0 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c0
+ bl_0_0 br_0_0 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c0
+ bl_0_0 br_0_0 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c0
+ bl_0_0 br_0_0 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c0
+ bl_0_0 br_0_0 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c0
+ bl_0_0 br_0_0 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c0
+ bl_0_0 br_0_0 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c0
+ bl_0_0 br_0_0 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c0
+ bl_0_0 br_0_0 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c0
+ bl_0_0 br_0_0 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c0
+ bl_0_0 br_0_0 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c0
+ bl_0_0 br_0_0 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c0
+ bl_0_0 br_0_0 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c0
+ bl_0_0 br_0_0 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c0
+ bl_0_0 br_0_0 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c0
+ bl_0_0 br_0_0 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c0
+ bl_0_0 br_0_0 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c0
+ bl_0_0 br_0_0 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c0
+ bl_0_0 br_0_0 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c0
+ bl_0_0 br_0_0 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c0
+ bl_0_0 br_0_0 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c0
+ bl_0_0 br_0_0 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c0
+ bl_0_0 br_0_0 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c0
+ bl_0_0 br_0_0 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c0
+ bl_0_0 br_0_0 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c0
+ bl_0_0 br_0_0 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c0
+ bl_0_0 br_0_0 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c0
+ bl_0_0 br_0_0 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c0
+ bl_0_0 br_0_0 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c0
+ bl_0_0 br_0_0 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c0
+ bl_0_0 br_0_0 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c0
+ bl_0_0 br_0_0 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c0
+ bl_0_0 br_0_0 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c0
+ bl_0_0 br_0_0 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c0
+ bl_0_0 br_0_0 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c0
+ bl_0_0 br_0_0 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c0
+ bl_0_0 br_0_0 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c0
+ bl_0_0 br_0_0 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c0
+ bl_0_0 br_0_0 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c0
+ bl_0_0 br_0_0 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c0
+ bl_0_0 br_0_0 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c0
+ bl_0_0 br_0_0 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c0
+ bl_0_0 br_0_0 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c0
+ bl_0_0 br_0_0 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c0
+ bl_0_0 br_0_0 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c0
+ bl_0_0 br_0_0 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c0
+ bl_0_0 br_0_0 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c0
+ bl_0_0 br_0_0 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c0
+ bl_0_0 br_0_0 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c0
+ bl_0_0 br_0_0 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c0
+ bl_0_0 br_0_0 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c0
+ bl_0_0 br_0_0 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c0
+ bl_0_0 br_0_0 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c1
+ bl_0_1 br_0_1 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c1
+ bl_0_1 br_0_1 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c1
+ bl_0_1 br_0_1 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c1
+ bl_0_1 br_0_1 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c1
+ bl_0_1 br_0_1 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c1
+ bl_0_1 br_0_1 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c1
+ bl_0_1 br_0_1 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c1
+ bl_0_1 br_0_1 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c1
+ bl_0_1 br_0_1 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c1
+ bl_0_1 br_0_1 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c1
+ bl_0_1 br_0_1 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c1
+ bl_0_1 br_0_1 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c1
+ bl_0_1 br_0_1 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c1
+ bl_0_1 br_0_1 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c1
+ bl_0_1 br_0_1 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c1
+ bl_0_1 br_0_1 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c1
+ bl_0_1 br_0_1 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c1
+ bl_0_1 br_0_1 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c1
+ bl_0_1 br_0_1 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c1
+ bl_0_1 br_0_1 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c1
+ bl_0_1 br_0_1 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c1
+ bl_0_1 br_0_1 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c1
+ bl_0_1 br_0_1 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c1
+ bl_0_1 br_0_1 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c1
+ bl_0_1 br_0_1 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c1
+ bl_0_1 br_0_1 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c1
+ bl_0_1 br_0_1 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c1
+ bl_0_1 br_0_1 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c1
+ bl_0_1 br_0_1 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c1
+ bl_0_1 br_0_1 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c1
+ bl_0_1 br_0_1 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c1
+ bl_0_1 br_0_1 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c1
+ bl_0_1 br_0_1 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c1
+ bl_0_1 br_0_1 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c1
+ bl_0_1 br_0_1 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c1
+ bl_0_1 br_0_1 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c1
+ bl_0_1 br_0_1 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c1
+ bl_0_1 br_0_1 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c1
+ bl_0_1 br_0_1 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c1
+ bl_0_1 br_0_1 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c1
+ bl_0_1 br_0_1 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c1
+ bl_0_1 br_0_1 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c1
+ bl_0_1 br_0_1 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c1
+ bl_0_1 br_0_1 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c1
+ bl_0_1 br_0_1 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c1
+ bl_0_1 br_0_1 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c1
+ bl_0_1 br_0_1 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c1
+ bl_0_1 br_0_1 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c1
+ bl_0_1 br_0_1 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c1
+ bl_0_1 br_0_1 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c1
+ bl_0_1 br_0_1 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c1
+ bl_0_1 br_0_1 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c1
+ bl_0_1 br_0_1 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c1
+ bl_0_1 br_0_1 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c1
+ bl_0_1 br_0_1 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c1
+ bl_0_1 br_0_1 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c1
+ bl_0_1 br_0_1 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c1
+ bl_0_1 br_0_1 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c1
+ bl_0_1 br_0_1 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c1
+ bl_0_1 br_0_1 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c1
+ bl_0_1 br_0_1 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c1
+ bl_0_1 br_0_1 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c1
+ bl_0_1 br_0_1 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c1
+ bl_0_1 br_0_1 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c1
+ bl_0_1 br_0_1 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c1
+ bl_0_1 br_0_1 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c1
+ bl_0_1 br_0_1 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c1
+ bl_0_1 br_0_1 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c1
+ bl_0_1 br_0_1 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c1
+ bl_0_1 br_0_1 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c1
+ bl_0_1 br_0_1 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c1
+ bl_0_1 br_0_1 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c1
+ bl_0_1 br_0_1 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c1
+ bl_0_1 br_0_1 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c1
+ bl_0_1 br_0_1 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c1
+ bl_0_1 br_0_1 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c1
+ bl_0_1 br_0_1 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c1
+ bl_0_1 br_0_1 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c1
+ bl_0_1 br_0_1 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c1
+ bl_0_1 br_0_1 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c1
+ bl_0_1 br_0_1 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c1
+ bl_0_1 br_0_1 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c1
+ bl_0_1 br_0_1 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c1
+ bl_0_1 br_0_1 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c1
+ bl_0_1 br_0_1 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c1
+ bl_0_1 br_0_1 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c1
+ bl_0_1 br_0_1 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c1
+ bl_0_1 br_0_1 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c1
+ bl_0_1 br_0_1 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c1
+ bl_0_1 br_0_1 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c1
+ bl_0_1 br_0_1 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c1
+ bl_0_1 br_0_1 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c1
+ bl_0_1 br_0_1 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c1
+ bl_0_1 br_0_1 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c1
+ bl_0_1 br_0_1 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c1
+ bl_0_1 br_0_1 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c1
+ bl_0_1 br_0_1 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c1
+ bl_0_1 br_0_1 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c1
+ bl_0_1 br_0_1 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c1
+ bl_0_1 br_0_1 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c1
+ bl_0_1 br_0_1 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c1
+ bl_0_1 br_0_1 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c1
+ bl_0_1 br_0_1 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c1
+ bl_0_1 br_0_1 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c1
+ bl_0_1 br_0_1 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c1
+ bl_0_1 br_0_1 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c1
+ bl_0_1 br_0_1 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c1
+ bl_0_1 br_0_1 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c1
+ bl_0_1 br_0_1 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c1
+ bl_0_1 br_0_1 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c1
+ bl_0_1 br_0_1 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c1
+ bl_0_1 br_0_1 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c1
+ bl_0_1 br_0_1 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c1
+ bl_0_1 br_0_1 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c1
+ bl_0_1 br_0_1 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c1
+ bl_0_1 br_0_1 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c1
+ bl_0_1 br_0_1 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c1
+ bl_0_1 br_0_1 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c1
+ bl_0_1 br_0_1 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c1
+ bl_0_1 br_0_1 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c1
+ bl_0_1 br_0_1 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c1
+ bl_0_1 br_0_1 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c1
+ bl_0_1 br_0_1 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c1
+ bl_0_1 br_0_1 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c1
+ bl_0_1 br_0_1 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c1
+ bl_0_1 br_0_1 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c1
+ bl_0_1 br_0_1 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c1
+ bl_0_1 br_0_1 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c1
+ bl_0_1 br_0_1 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c1
+ bl_0_1 br_0_1 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c1
+ bl_0_1 br_0_1 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c1
+ bl_0_1 br_0_1 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c1
+ bl_0_1 br_0_1 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c1
+ bl_0_1 br_0_1 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c1
+ bl_0_1 br_0_1 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c1
+ bl_0_1 br_0_1 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c1
+ bl_0_1 br_0_1 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c1
+ bl_0_1 br_0_1 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c1
+ bl_0_1 br_0_1 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c1
+ bl_0_1 br_0_1 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c1
+ bl_0_1 br_0_1 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c1
+ bl_0_1 br_0_1 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c1
+ bl_0_1 br_0_1 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c1
+ bl_0_1 br_0_1 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c1
+ bl_0_1 br_0_1 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c1
+ bl_0_1 br_0_1 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c1
+ bl_0_1 br_0_1 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c1
+ bl_0_1 br_0_1 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c1
+ bl_0_1 br_0_1 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c1
+ bl_0_1 br_0_1 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c1
+ bl_0_1 br_0_1 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c1
+ bl_0_1 br_0_1 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c1
+ bl_0_1 br_0_1 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c1
+ bl_0_1 br_0_1 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c1
+ bl_0_1 br_0_1 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c1
+ bl_0_1 br_0_1 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c1
+ bl_0_1 br_0_1 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c1
+ bl_0_1 br_0_1 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c1
+ bl_0_1 br_0_1 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c1
+ bl_0_1 br_0_1 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c1
+ bl_0_1 br_0_1 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c1
+ bl_0_1 br_0_1 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c1
+ bl_0_1 br_0_1 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c1
+ bl_0_1 br_0_1 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c1
+ bl_0_1 br_0_1 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c1
+ bl_0_1 br_0_1 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c1
+ bl_0_1 br_0_1 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c1
+ bl_0_1 br_0_1 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c1
+ bl_0_1 br_0_1 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c1
+ bl_0_1 br_0_1 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c1
+ bl_0_1 br_0_1 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c1
+ bl_0_1 br_0_1 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c1
+ bl_0_1 br_0_1 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c1
+ bl_0_1 br_0_1 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c1
+ bl_0_1 br_0_1 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c1
+ bl_0_1 br_0_1 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c1
+ bl_0_1 br_0_1 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c1
+ bl_0_1 br_0_1 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c1
+ bl_0_1 br_0_1 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c1
+ bl_0_1 br_0_1 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c1
+ bl_0_1 br_0_1 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c1
+ bl_0_1 br_0_1 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c1
+ bl_0_1 br_0_1 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c1
+ bl_0_1 br_0_1 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c1
+ bl_0_1 br_0_1 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c1
+ bl_0_1 br_0_1 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c1
+ bl_0_1 br_0_1 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c1
+ bl_0_1 br_0_1 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c1
+ bl_0_1 br_0_1 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c1
+ bl_0_1 br_0_1 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c1
+ bl_0_1 br_0_1 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c1
+ bl_0_1 br_0_1 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c1
+ bl_0_1 br_0_1 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c1
+ bl_0_1 br_0_1 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c1
+ bl_0_1 br_0_1 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c1
+ bl_0_1 br_0_1 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c1
+ bl_0_1 br_0_1 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c1
+ bl_0_1 br_0_1 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c1
+ bl_0_1 br_0_1 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c1
+ bl_0_1 br_0_1 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c1
+ bl_0_1 br_0_1 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c1
+ bl_0_1 br_0_1 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c1
+ bl_0_1 br_0_1 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c1
+ bl_0_1 br_0_1 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c1
+ bl_0_1 br_0_1 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c1
+ bl_0_1 br_0_1 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c1
+ bl_0_1 br_0_1 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c1
+ bl_0_1 br_0_1 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c1
+ bl_0_1 br_0_1 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c1
+ bl_0_1 br_0_1 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c1
+ bl_0_1 br_0_1 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c1
+ bl_0_1 br_0_1 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c1
+ bl_0_1 br_0_1 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c1
+ bl_0_1 br_0_1 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c1
+ bl_0_1 br_0_1 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c1
+ bl_0_1 br_0_1 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c1
+ bl_0_1 br_0_1 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c1
+ bl_0_1 br_0_1 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c1
+ bl_0_1 br_0_1 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c1
+ bl_0_1 br_0_1 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c1
+ bl_0_1 br_0_1 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c1
+ bl_0_1 br_0_1 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c1
+ bl_0_1 br_0_1 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c1
+ bl_0_1 br_0_1 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c1
+ bl_0_1 br_0_1 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c1
+ bl_0_1 br_0_1 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c1
+ bl_0_1 br_0_1 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c1
+ bl_0_1 br_0_1 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c1
+ bl_0_1 br_0_1 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c1
+ bl_0_1 br_0_1 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c1
+ bl_0_1 br_0_1 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c1
+ bl_0_1 br_0_1 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c1
+ bl_0_1 br_0_1 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c1
+ bl_0_1 br_0_1 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c1
+ bl_0_1 br_0_1 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c1
+ bl_0_1 br_0_1 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c1
+ bl_0_1 br_0_1 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c1
+ bl_0_1 br_0_1 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c1
+ bl_0_1 br_0_1 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c1
+ bl_0_1 br_0_1 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c1
+ bl_0_1 br_0_1 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c1
+ bl_0_1 br_0_1 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c1
+ bl_0_1 br_0_1 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c1
+ bl_0_1 br_0_1 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c1
+ bl_0_1 br_0_1 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c1
+ bl_0_1 br_0_1 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c1
+ bl_0_1 br_0_1 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c1
+ bl_0_1 br_0_1 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c1
+ bl_0_1 br_0_1 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c1
+ bl_0_1 br_0_1 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c1
+ bl_0_1 br_0_1 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c1
+ bl_0_1 br_0_1 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c1
+ bl_0_1 br_0_1 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c1
+ bl_0_1 br_0_1 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c1
+ bl_0_1 br_0_1 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c1
+ bl_0_1 br_0_1 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c2
+ bl_0_2 br_0_2 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c2
+ bl_0_2 br_0_2 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c2
+ bl_0_2 br_0_2 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c2
+ bl_0_2 br_0_2 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c2
+ bl_0_2 br_0_2 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c2
+ bl_0_2 br_0_2 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c2
+ bl_0_2 br_0_2 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c2
+ bl_0_2 br_0_2 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c2
+ bl_0_2 br_0_2 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c2
+ bl_0_2 br_0_2 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c2
+ bl_0_2 br_0_2 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c2
+ bl_0_2 br_0_2 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c2
+ bl_0_2 br_0_2 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c2
+ bl_0_2 br_0_2 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c2
+ bl_0_2 br_0_2 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c2
+ bl_0_2 br_0_2 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c2
+ bl_0_2 br_0_2 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c2
+ bl_0_2 br_0_2 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c2
+ bl_0_2 br_0_2 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c2
+ bl_0_2 br_0_2 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c2
+ bl_0_2 br_0_2 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c2
+ bl_0_2 br_0_2 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c2
+ bl_0_2 br_0_2 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c2
+ bl_0_2 br_0_2 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c2
+ bl_0_2 br_0_2 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c2
+ bl_0_2 br_0_2 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c2
+ bl_0_2 br_0_2 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c2
+ bl_0_2 br_0_2 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c2
+ bl_0_2 br_0_2 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c2
+ bl_0_2 br_0_2 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c2
+ bl_0_2 br_0_2 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c2
+ bl_0_2 br_0_2 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c2
+ bl_0_2 br_0_2 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c2
+ bl_0_2 br_0_2 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c2
+ bl_0_2 br_0_2 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c2
+ bl_0_2 br_0_2 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c2
+ bl_0_2 br_0_2 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c2
+ bl_0_2 br_0_2 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c2
+ bl_0_2 br_0_2 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c2
+ bl_0_2 br_0_2 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c2
+ bl_0_2 br_0_2 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c2
+ bl_0_2 br_0_2 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c2
+ bl_0_2 br_0_2 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c2
+ bl_0_2 br_0_2 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c2
+ bl_0_2 br_0_2 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c2
+ bl_0_2 br_0_2 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c2
+ bl_0_2 br_0_2 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c2
+ bl_0_2 br_0_2 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c2
+ bl_0_2 br_0_2 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c2
+ bl_0_2 br_0_2 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c2
+ bl_0_2 br_0_2 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c2
+ bl_0_2 br_0_2 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c2
+ bl_0_2 br_0_2 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c2
+ bl_0_2 br_0_2 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c2
+ bl_0_2 br_0_2 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c2
+ bl_0_2 br_0_2 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c2
+ bl_0_2 br_0_2 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c2
+ bl_0_2 br_0_2 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c2
+ bl_0_2 br_0_2 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c2
+ bl_0_2 br_0_2 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c2
+ bl_0_2 br_0_2 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c2
+ bl_0_2 br_0_2 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c2
+ bl_0_2 br_0_2 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c2
+ bl_0_2 br_0_2 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c2
+ bl_0_2 br_0_2 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c2
+ bl_0_2 br_0_2 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c2
+ bl_0_2 br_0_2 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c2
+ bl_0_2 br_0_2 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c2
+ bl_0_2 br_0_2 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c2
+ bl_0_2 br_0_2 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c2
+ bl_0_2 br_0_2 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c2
+ bl_0_2 br_0_2 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c2
+ bl_0_2 br_0_2 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c2
+ bl_0_2 br_0_2 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c2
+ bl_0_2 br_0_2 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c2
+ bl_0_2 br_0_2 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c2
+ bl_0_2 br_0_2 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c2
+ bl_0_2 br_0_2 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c2
+ bl_0_2 br_0_2 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c2
+ bl_0_2 br_0_2 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c2
+ bl_0_2 br_0_2 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c2
+ bl_0_2 br_0_2 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c2
+ bl_0_2 br_0_2 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c2
+ bl_0_2 br_0_2 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c2
+ bl_0_2 br_0_2 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c2
+ bl_0_2 br_0_2 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c2
+ bl_0_2 br_0_2 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c2
+ bl_0_2 br_0_2 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c2
+ bl_0_2 br_0_2 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c2
+ bl_0_2 br_0_2 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c2
+ bl_0_2 br_0_2 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c2
+ bl_0_2 br_0_2 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c2
+ bl_0_2 br_0_2 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c2
+ bl_0_2 br_0_2 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c2
+ bl_0_2 br_0_2 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c2
+ bl_0_2 br_0_2 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c2
+ bl_0_2 br_0_2 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c2
+ bl_0_2 br_0_2 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c2
+ bl_0_2 br_0_2 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c2
+ bl_0_2 br_0_2 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c2
+ bl_0_2 br_0_2 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c2
+ bl_0_2 br_0_2 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c2
+ bl_0_2 br_0_2 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c2
+ bl_0_2 br_0_2 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c2
+ bl_0_2 br_0_2 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c2
+ bl_0_2 br_0_2 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c2
+ bl_0_2 br_0_2 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c2
+ bl_0_2 br_0_2 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c2
+ bl_0_2 br_0_2 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c2
+ bl_0_2 br_0_2 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c2
+ bl_0_2 br_0_2 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c2
+ bl_0_2 br_0_2 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c2
+ bl_0_2 br_0_2 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c2
+ bl_0_2 br_0_2 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c2
+ bl_0_2 br_0_2 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c2
+ bl_0_2 br_0_2 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c2
+ bl_0_2 br_0_2 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c2
+ bl_0_2 br_0_2 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c2
+ bl_0_2 br_0_2 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c2
+ bl_0_2 br_0_2 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c2
+ bl_0_2 br_0_2 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c2
+ bl_0_2 br_0_2 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c2
+ bl_0_2 br_0_2 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c2
+ bl_0_2 br_0_2 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c2
+ bl_0_2 br_0_2 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c2
+ bl_0_2 br_0_2 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c2
+ bl_0_2 br_0_2 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c2
+ bl_0_2 br_0_2 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c2
+ bl_0_2 br_0_2 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c2
+ bl_0_2 br_0_2 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c2
+ bl_0_2 br_0_2 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c2
+ bl_0_2 br_0_2 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c2
+ bl_0_2 br_0_2 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c2
+ bl_0_2 br_0_2 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c2
+ bl_0_2 br_0_2 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c2
+ bl_0_2 br_0_2 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c2
+ bl_0_2 br_0_2 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c2
+ bl_0_2 br_0_2 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c2
+ bl_0_2 br_0_2 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c2
+ bl_0_2 br_0_2 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c2
+ bl_0_2 br_0_2 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c2
+ bl_0_2 br_0_2 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c2
+ bl_0_2 br_0_2 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c2
+ bl_0_2 br_0_2 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c2
+ bl_0_2 br_0_2 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c2
+ bl_0_2 br_0_2 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c2
+ bl_0_2 br_0_2 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c2
+ bl_0_2 br_0_2 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c2
+ bl_0_2 br_0_2 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c2
+ bl_0_2 br_0_2 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c2
+ bl_0_2 br_0_2 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c2
+ bl_0_2 br_0_2 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c2
+ bl_0_2 br_0_2 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c2
+ bl_0_2 br_0_2 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c2
+ bl_0_2 br_0_2 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c2
+ bl_0_2 br_0_2 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c2
+ bl_0_2 br_0_2 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c2
+ bl_0_2 br_0_2 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c2
+ bl_0_2 br_0_2 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c2
+ bl_0_2 br_0_2 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c2
+ bl_0_2 br_0_2 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c2
+ bl_0_2 br_0_2 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c2
+ bl_0_2 br_0_2 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c2
+ bl_0_2 br_0_2 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c2
+ bl_0_2 br_0_2 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c2
+ bl_0_2 br_0_2 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c2
+ bl_0_2 br_0_2 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c2
+ bl_0_2 br_0_2 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c2
+ bl_0_2 br_0_2 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c2
+ bl_0_2 br_0_2 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c2
+ bl_0_2 br_0_2 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c2
+ bl_0_2 br_0_2 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c2
+ bl_0_2 br_0_2 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c2
+ bl_0_2 br_0_2 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c2
+ bl_0_2 br_0_2 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c2
+ bl_0_2 br_0_2 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c2
+ bl_0_2 br_0_2 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c2
+ bl_0_2 br_0_2 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c2
+ bl_0_2 br_0_2 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c2
+ bl_0_2 br_0_2 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c2
+ bl_0_2 br_0_2 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c2
+ bl_0_2 br_0_2 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c2
+ bl_0_2 br_0_2 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c2
+ bl_0_2 br_0_2 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c2
+ bl_0_2 br_0_2 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c2
+ bl_0_2 br_0_2 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c2
+ bl_0_2 br_0_2 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c2
+ bl_0_2 br_0_2 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c2
+ bl_0_2 br_0_2 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c2
+ bl_0_2 br_0_2 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c2
+ bl_0_2 br_0_2 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c2
+ bl_0_2 br_0_2 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c2
+ bl_0_2 br_0_2 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c2
+ bl_0_2 br_0_2 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c2
+ bl_0_2 br_0_2 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c2
+ bl_0_2 br_0_2 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c2
+ bl_0_2 br_0_2 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c2
+ bl_0_2 br_0_2 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c2
+ bl_0_2 br_0_2 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c2
+ bl_0_2 br_0_2 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c2
+ bl_0_2 br_0_2 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c2
+ bl_0_2 br_0_2 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c2
+ bl_0_2 br_0_2 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c2
+ bl_0_2 br_0_2 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c2
+ bl_0_2 br_0_2 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c2
+ bl_0_2 br_0_2 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c2
+ bl_0_2 br_0_2 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c2
+ bl_0_2 br_0_2 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c2
+ bl_0_2 br_0_2 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c2
+ bl_0_2 br_0_2 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c2
+ bl_0_2 br_0_2 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c2
+ bl_0_2 br_0_2 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c2
+ bl_0_2 br_0_2 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c2
+ bl_0_2 br_0_2 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c2
+ bl_0_2 br_0_2 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c2
+ bl_0_2 br_0_2 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c2
+ bl_0_2 br_0_2 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c2
+ bl_0_2 br_0_2 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c2
+ bl_0_2 br_0_2 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c2
+ bl_0_2 br_0_2 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c2
+ bl_0_2 br_0_2 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c2
+ bl_0_2 br_0_2 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c2
+ bl_0_2 br_0_2 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c2
+ bl_0_2 br_0_2 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c2
+ bl_0_2 br_0_2 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c2
+ bl_0_2 br_0_2 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c2
+ bl_0_2 br_0_2 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c2
+ bl_0_2 br_0_2 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c2
+ bl_0_2 br_0_2 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c2
+ bl_0_2 br_0_2 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c2
+ bl_0_2 br_0_2 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c2
+ bl_0_2 br_0_2 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c2
+ bl_0_2 br_0_2 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c2
+ bl_0_2 br_0_2 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c2
+ bl_0_2 br_0_2 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c2
+ bl_0_2 br_0_2 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c2
+ bl_0_2 br_0_2 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c2
+ bl_0_2 br_0_2 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c2
+ bl_0_2 br_0_2 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c2
+ bl_0_2 br_0_2 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c2
+ bl_0_2 br_0_2 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c2
+ bl_0_2 br_0_2 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c2
+ bl_0_2 br_0_2 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c2
+ bl_0_2 br_0_2 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c2
+ bl_0_2 br_0_2 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c2
+ bl_0_2 br_0_2 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c2
+ bl_0_2 br_0_2 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c2
+ bl_0_2 br_0_2 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c2
+ bl_0_2 br_0_2 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c2
+ bl_0_2 br_0_2 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c2
+ bl_0_2 br_0_2 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c2
+ bl_0_2 br_0_2 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c2
+ bl_0_2 br_0_2 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c2
+ bl_0_2 br_0_2 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c2
+ bl_0_2 br_0_2 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c2
+ bl_0_2 br_0_2 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c3
+ bl_0_3 br_0_3 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c3
+ bl_0_3 br_0_3 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c3
+ bl_0_3 br_0_3 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c3
+ bl_0_3 br_0_3 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c3
+ bl_0_3 br_0_3 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c3
+ bl_0_3 br_0_3 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c3
+ bl_0_3 br_0_3 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c3
+ bl_0_3 br_0_3 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c3
+ bl_0_3 br_0_3 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c3
+ bl_0_3 br_0_3 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c3
+ bl_0_3 br_0_3 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c3
+ bl_0_3 br_0_3 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c3
+ bl_0_3 br_0_3 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c3
+ bl_0_3 br_0_3 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c3
+ bl_0_3 br_0_3 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c3
+ bl_0_3 br_0_3 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c3
+ bl_0_3 br_0_3 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c3
+ bl_0_3 br_0_3 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c3
+ bl_0_3 br_0_3 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c3
+ bl_0_3 br_0_3 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c3
+ bl_0_3 br_0_3 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c3
+ bl_0_3 br_0_3 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c3
+ bl_0_3 br_0_3 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c3
+ bl_0_3 br_0_3 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c3
+ bl_0_3 br_0_3 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c3
+ bl_0_3 br_0_3 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c3
+ bl_0_3 br_0_3 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c3
+ bl_0_3 br_0_3 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c3
+ bl_0_3 br_0_3 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c3
+ bl_0_3 br_0_3 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c3
+ bl_0_3 br_0_3 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c3
+ bl_0_3 br_0_3 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c3
+ bl_0_3 br_0_3 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c3
+ bl_0_3 br_0_3 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c3
+ bl_0_3 br_0_3 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c3
+ bl_0_3 br_0_3 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c3
+ bl_0_3 br_0_3 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c3
+ bl_0_3 br_0_3 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c3
+ bl_0_3 br_0_3 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c3
+ bl_0_3 br_0_3 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c3
+ bl_0_3 br_0_3 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c3
+ bl_0_3 br_0_3 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c3
+ bl_0_3 br_0_3 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c3
+ bl_0_3 br_0_3 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c3
+ bl_0_3 br_0_3 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c3
+ bl_0_3 br_0_3 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c3
+ bl_0_3 br_0_3 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c3
+ bl_0_3 br_0_3 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c3
+ bl_0_3 br_0_3 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c3
+ bl_0_3 br_0_3 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c3
+ bl_0_3 br_0_3 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c3
+ bl_0_3 br_0_3 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c3
+ bl_0_3 br_0_3 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c3
+ bl_0_3 br_0_3 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c3
+ bl_0_3 br_0_3 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c3
+ bl_0_3 br_0_3 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c3
+ bl_0_3 br_0_3 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c3
+ bl_0_3 br_0_3 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c3
+ bl_0_3 br_0_3 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c3
+ bl_0_3 br_0_3 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c3
+ bl_0_3 br_0_3 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c3
+ bl_0_3 br_0_3 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c3
+ bl_0_3 br_0_3 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c3
+ bl_0_3 br_0_3 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c3
+ bl_0_3 br_0_3 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c3
+ bl_0_3 br_0_3 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c3
+ bl_0_3 br_0_3 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c3
+ bl_0_3 br_0_3 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c3
+ bl_0_3 br_0_3 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c3
+ bl_0_3 br_0_3 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c3
+ bl_0_3 br_0_3 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c3
+ bl_0_3 br_0_3 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c3
+ bl_0_3 br_0_3 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c3
+ bl_0_3 br_0_3 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c3
+ bl_0_3 br_0_3 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c3
+ bl_0_3 br_0_3 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c3
+ bl_0_3 br_0_3 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c3
+ bl_0_3 br_0_3 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c3
+ bl_0_3 br_0_3 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c3
+ bl_0_3 br_0_3 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c3
+ bl_0_3 br_0_3 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c3
+ bl_0_3 br_0_3 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c3
+ bl_0_3 br_0_3 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c3
+ bl_0_3 br_0_3 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c3
+ bl_0_3 br_0_3 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c3
+ bl_0_3 br_0_3 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c3
+ bl_0_3 br_0_3 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c3
+ bl_0_3 br_0_3 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c3
+ bl_0_3 br_0_3 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c3
+ bl_0_3 br_0_3 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c3
+ bl_0_3 br_0_3 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c3
+ bl_0_3 br_0_3 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c3
+ bl_0_3 br_0_3 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c3
+ bl_0_3 br_0_3 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c3
+ bl_0_3 br_0_3 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c3
+ bl_0_3 br_0_3 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c3
+ bl_0_3 br_0_3 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c3
+ bl_0_3 br_0_3 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c3
+ bl_0_3 br_0_3 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c3
+ bl_0_3 br_0_3 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c3
+ bl_0_3 br_0_3 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c3
+ bl_0_3 br_0_3 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c3
+ bl_0_3 br_0_3 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c3
+ bl_0_3 br_0_3 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c3
+ bl_0_3 br_0_3 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c3
+ bl_0_3 br_0_3 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c3
+ bl_0_3 br_0_3 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c3
+ bl_0_3 br_0_3 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c3
+ bl_0_3 br_0_3 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c3
+ bl_0_3 br_0_3 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c3
+ bl_0_3 br_0_3 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c3
+ bl_0_3 br_0_3 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c3
+ bl_0_3 br_0_3 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c3
+ bl_0_3 br_0_3 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c3
+ bl_0_3 br_0_3 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c3
+ bl_0_3 br_0_3 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c3
+ bl_0_3 br_0_3 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c3
+ bl_0_3 br_0_3 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c3
+ bl_0_3 br_0_3 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c3
+ bl_0_3 br_0_3 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c3
+ bl_0_3 br_0_3 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c3
+ bl_0_3 br_0_3 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c3
+ bl_0_3 br_0_3 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c3
+ bl_0_3 br_0_3 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c3
+ bl_0_3 br_0_3 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c3
+ bl_0_3 br_0_3 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c3
+ bl_0_3 br_0_3 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c3
+ bl_0_3 br_0_3 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c3
+ bl_0_3 br_0_3 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c3
+ bl_0_3 br_0_3 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c3
+ bl_0_3 br_0_3 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c3
+ bl_0_3 br_0_3 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c3
+ bl_0_3 br_0_3 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c3
+ bl_0_3 br_0_3 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c3
+ bl_0_3 br_0_3 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c3
+ bl_0_3 br_0_3 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c3
+ bl_0_3 br_0_3 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c3
+ bl_0_3 br_0_3 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c3
+ bl_0_3 br_0_3 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c3
+ bl_0_3 br_0_3 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c3
+ bl_0_3 br_0_3 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c3
+ bl_0_3 br_0_3 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c3
+ bl_0_3 br_0_3 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c3
+ bl_0_3 br_0_3 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c3
+ bl_0_3 br_0_3 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c3
+ bl_0_3 br_0_3 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c3
+ bl_0_3 br_0_3 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c3
+ bl_0_3 br_0_3 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c3
+ bl_0_3 br_0_3 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c3
+ bl_0_3 br_0_3 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c3
+ bl_0_3 br_0_3 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c3
+ bl_0_3 br_0_3 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c3
+ bl_0_3 br_0_3 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c3
+ bl_0_3 br_0_3 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c3
+ bl_0_3 br_0_3 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c3
+ bl_0_3 br_0_3 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c3
+ bl_0_3 br_0_3 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c3
+ bl_0_3 br_0_3 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c3
+ bl_0_3 br_0_3 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c3
+ bl_0_3 br_0_3 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c3
+ bl_0_3 br_0_3 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c3
+ bl_0_3 br_0_3 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c3
+ bl_0_3 br_0_3 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c3
+ bl_0_3 br_0_3 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c3
+ bl_0_3 br_0_3 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c3
+ bl_0_3 br_0_3 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c3
+ bl_0_3 br_0_3 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c3
+ bl_0_3 br_0_3 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c3
+ bl_0_3 br_0_3 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c3
+ bl_0_3 br_0_3 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c3
+ bl_0_3 br_0_3 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c3
+ bl_0_3 br_0_3 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c3
+ bl_0_3 br_0_3 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c3
+ bl_0_3 br_0_3 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c3
+ bl_0_3 br_0_3 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c3
+ bl_0_3 br_0_3 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c3
+ bl_0_3 br_0_3 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c3
+ bl_0_3 br_0_3 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c3
+ bl_0_3 br_0_3 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c3
+ bl_0_3 br_0_3 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c3
+ bl_0_3 br_0_3 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c3
+ bl_0_3 br_0_3 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c3
+ bl_0_3 br_0_3 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c3
+ bl_0_3 br_0_3 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c3
+ bl_0_3 br_0_3 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c3
+ bl_0_3 br_0_3 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c3
+ bl_0_3 br_0_3 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c3
+ bl_0_3 br_0_3 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c3
+ bl_0_3 br_0_3 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c3
+ bl_0_3 br_0_3 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c3
+ bl_0_3 br_0_3 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c3
+ bl_0_3 br_0_3 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c3
+ bl_0_3 br_0_3 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c3
+ bl_0_3 br_0_3 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c3
+ bl_0_3 br_0_3 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c3
+ bl_0_3 br_0_3 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c3
+ bl_0_3 br_0_3 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c3
+ bl_0_3 br_0_3 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c3
+ bl_0_3 br_0_3 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c3
+ bl_0_3 br_0_3 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c3
+ bl_0_3 br_0_3 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c3
+ bl_0_3 br_0_3 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c3
+ bl_0_3 br_0_3 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c3
+ bl_0_3 br_0_3 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c3
+ bl_0_3 br_0_3 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c3
+ bl_0_3 br_0_3 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c3
+ bl_0_3 br_0_3 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c3
+ bl_0_3 br_0_3 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c3
+ bl_0_3 br_0_3 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c3
+ bl_0_3 br_0_3 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c3
+ bl_0_3 br_0_3 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c3
+ bl_0_3 br_0_3 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c3
+ bl_0_3 br_0_3 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c3
+ bl_0_3 br_0_3 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c3
+ bl_0_3 br_0_3 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c3
+ bl_0_3 br_0_3 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c3
+ bl_0_3 br_0_3 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c3
+ bl_0_3 br_0_3 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c3
+ bl_0_3 br_0_3 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c3
+ bl_0_3 br_0_3 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c3
+ bl_0_3 br_0_3 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c3
+ bl_0_3 br_0_3 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c3
+ bl_0_3 br_0_3 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c3
+ bl_0_3 br_0_3 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c3
+ bl_0_3 br_0_3 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c3
+ bl_0_3 br_0_3 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c3
+ bl_0_3 br_0_3 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c3
+ bl_0_3 br_0_3 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c3
+ bl_0_3 br_0_3 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c3
+ bl_0_3 br_0_3 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c3
+ bl_0_3 br_0_3 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c3
+ bl_0_3 br_0_3 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c3
+ bl_0_3 br_0_3 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c3
+ bl_0_3 br_0_3 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c3
+ bl_0_3 br_0_3 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c3
+ bl_0_3 br_0_3 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c3
+ bl_0_3 br_0_3 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c3
+ bl_0_3 br_0_3 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c3
+ bl_0_3 br_0_3 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c3
+ bl_0_3 br_0_3 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c3
+ bl_0_3 br_0_3 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c3
+ bl_0_3 br_0_3 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c3
+ bl_0_3 br_0_3 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c3
+ bl_0_3 br_0_3 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c3
+ bl_0_3 br_0_3 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c3
+ bl_0_3 br_0_3 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c3
+ bl_0_3 br_0_3 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c3
+ bl_0_3 br_0_3 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c3
+ bl_0_3 br_0_3 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c3
+ bl_0_3 br_0_3 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c3
+ bl_0_3 br_0_3 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c3
+ bl_0_3 br_0_3 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c3
+ bl_0_3 br_0_3 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c3
+ bl_0_3 br_0_3 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c3
+ bl_0_3 br_0_3 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c3
+ bl_0_3 br_0_3 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c4
+ bl_0_4 br_0_4 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c4
+ bl_0_4 br_0_4 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c4
+ bl_0_4 br_0_4 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c4
+ bl_0_4 br_0_4 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c4
+ bl_0_4 br_0_4 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c4
+ bl_0_4 br_0_4 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c4
+ bl_0_4 br_0_4 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c4
+ bl_0_4 br_0_4 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c4
+ bl_0_4 br_0_4 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c4
+ bl_0_4 br_0_4 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c4
+ bl_0_4 br_0_4 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c4
+ bl_0_4 br_0_4 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c4
+ bl_0_4 br_0_4 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c4
+ bl_0_4 br_0_4 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c4
+ bl_0_4 br_0_4 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c4
+ bl_0_4 br_0_4 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c4
+ bl_0_4 br_0_4 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c4
+ bl_0_4 br_0_4 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c4
+ bl_0_4 br_0_4 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c4
+ bl_0_4 br_0_4 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c4
+ bl_0_4 br_0_4 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c4
+ bl_0_4 br_0_4 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c4
+ bl_0_4 br_0_4 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c4
+ bl_0_4 br_0_4 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c4
+ bl_0_4 br_0_4 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c4
+ bl_0_4 br_0_4 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c4
+ bl_0_4 br_0_4 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c4
+ bl_0_4 br_0_4 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c4
+ bl_0_4 br_0_4 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c4
+ bl_0_4 br_0_4 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c4
+ bl_0_4 br_0_4 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c4
+ bl_0_4 br_0_4 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c4
+ bl_0_4 br_0_4 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c4
+ bl_0_4 br_0_4 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c4
+ bl_0_4 br_0_4 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c4
+ bl_0_4 br_0_4 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c4
+ bl_0_4 br_0_4 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c4
+ bl_0_4 br_0_4 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c4
+ bl_0_4 br_0_4 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c4
+ bl_0_4 br_0_4 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c4
+ bl_0_4 br_0_4 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c4
+ bl_0_4 br_0_4 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c4
+ bl_0_4 br_0_4 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c4
+ bl_0_4 br_0_4 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c4
+ bl_0_4 br_0_4 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c4
+ bl_0_4 br_0_4 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c4
+ bl_0_4 br_0_4 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c4
+ bl_0_4 br_0_4 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c4
+ bl_0_4 br_0_4 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c4
+ bl_0_4 br_0_4 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c4
+ bl_0_4 br_0_4 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c4
+ bl_0_4 br_0_4 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c4
+ bl_0_4 br_0_4 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c4
+ bl_0_4 br_0_4 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c4
+ bl_0_4 br_0_4 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c4
+ bl_0_4 br_0_4 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c4
+ bl_0_4 br_0_4 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c4
+ bl_0_4 br_0_4 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c4
+ bl_0_4 br_0_4 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c4
+ bl_0_4 br_0_4 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c4
+ bl_0_4 br_0_4 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c4
+ bl_0_4 br_0_4 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c4
+ bl_0_4 br_0_4 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c4
+ bl_0_4 br_0_4 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c4
+ bl_0_4 br_0_4 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c4
+ bl_0_4 br_0_4 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c4
+ bl_0_4 br_0_4 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c4
+ bl_0_4 br_0_4 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c4
+ bl_0_4 br_0_4 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c4
+ bl_0_4 br_0_4 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c4
+ bl_0_4 br_0_4 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c4
+ bl_0_4 br_0_4 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c4
+ bl_0_4 br_0_4 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c4
+ bl_0_4 br_0_4 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c4
+ bl_0_4 br_0_4 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c4
+ bl_0_4 br_0_4 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c4
+ bl_0_4 br_0_4 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c4
+ bl_0_4 br_0_4 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c4
+ bl_0_4 br_0_4 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c4
+ bl_0_4 br_0_4 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c4
+ bl_0_4 br_0_4 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c4
+ bl_0_4 br_0_4 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c4
+ bl_0_4 br_0_4 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c4
+ bl_0_4 br_0_4 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c4
+ bl_0_4 br_0_4 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c4
+ bl_0_4 br_0_4 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c4
+ bl_0_4 br_0_4 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c4
+ bl_0_4 br_0_4 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c4
+ bl_0_4 br_0_4 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c4
+ bl_0_4 br_0_4 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c4
+ bl_0_4 br_0_4 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c4
+ bl_0_4 br_0_4 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c4
+ bl_0_4 br_0_4 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c4
+ bl_0_4 br_0_4 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c4
+ bl_0_4 br_0_4 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c4
+ bl_0_4 br_0_4 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c4
+ bl_0_4 br_0_4 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c4
+ bl_0_4 br_0_4 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c4
+ bl_0_4 br_0_4 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c4
+ bl_0_4 br_0_4 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c4
+ bl_0_4 br_0_4 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c4
+ bl_0_4 br_0_4 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c4
+ bl_0_4 br_0_4 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c4
+ bl_0_4 br_0_4 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c4
+ bl_0_4 br_0_4 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c4
+ bl_0_4 br_0_4 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c4
+ bl_0_4 br_0_4 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c4
+ bl_0_4 br_0_4 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c4
+ bl_0_4 br_0_4 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c4
+ bl_0_4 br_0_4 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c4
+ bl_0_4 br_0_4 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c4
+ bl_0_4 br_0_4 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c4
+ bl_0_4 br_0_4 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c4
+ bl_0_4 br_0_4 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c4
+ bl_0_4 br_0_4 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c4
+ bl_0_4 br_0_4 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c4
+ bl_0_4 br_0_4 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c4
+ bl_0_4 br_0_4 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c4
+ bl_0_4 br_0_4 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c4
+ bl_0_4 br_0_4 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c4
+ bl_0_4 br_0_4 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c4
+ bl_0_4 br_0_4 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c4
+ bl_0_4 br_0_4 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c4
+ bl_0_4 br_0_4 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c4
+ bl_0_4 br_0_4 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c4
+ bl_0_4 br_0_4 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c4
+ bl_0_4 br_0_4 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c4
+ bl_0_4 br_0_4 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c4
+ bl_0_4 br_0_4 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c4
+ bl_0_4 br_0_4 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c4
+ bl_0_4 br_0_4 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c4
+ bl_0_4 br_0_4 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c4
+ bl_0_4 br_0_4 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c4
+ bl_0_4 br_0_4 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c4
+ bl_0_4 br_0_4 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c4
+ bl_0_4 br_0_4 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c4
+ bl_0_4 br_0_4 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c4
+ bl_0_4 br_0_4 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c4
+ bl_0_4 br_0_4 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c4
+ bl_0_4 br_0_4 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c4
+ bl_0_4 br_0_4 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c4
+ bl_0_4 br_0_4 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c4
+ bl_0_4 br_0_4 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c4
+ bl_0_4 br_0_4 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c4
+ bl_0_4 br_0_4 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c4
+ bl_0_4 br_0_4 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c4
+ bl_0_4 br_0_4 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c4
+ bl_0_4 br_0_4 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c4
+ bl_0_4 br_0_4 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c4
+ bl_0_4 br_0_4 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c4
+ bl_0_4 br_0_4 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c4
+ bl_0_4 br_0_4 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c4
+ bl_0_4 br_0_4 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c4
+ bl_0_4 br_0_4 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c4
+ bl_0_4 br_0_4 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c4
+ bl_0_4 br_0_4 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c4
+ bl_0_4 br_0_4 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c4
+ bl_0_4 br_0_4 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c4
+ bl_0_4 br_0_4 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c4
+ bl_0_4 br_0_4 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c4
+ bl_0_4 br_0_4 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c4
+ bl_0_4 br_0_4 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c4
+ bl_0_4 br_0_4 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c4
+ bl_0_4 br_0_4 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c4
+ bl_0_4 br_0_4 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c4
+ bl_0_4 br_0_4 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c4
+ bl_0_4 br_0_4 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c4
+ bl_0_4 br_0_4 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c4
+ bl_0_4 br_0_4 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c4
+ bl_0_4 br_0_4 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c4
+ bl_0_4 br_0_4 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c4
+ bl_0_4 br_0_4 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c4
+ bl_0_4 br_0_4 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c4
+ bl_0_4 br_0_4 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c4
+ bl_0_4 br_0_4 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c4
+ bl_0_4 br_0_4 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c4
+ bl_0_4 br_0_4 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c4
+ bl_0_4 br_0_4 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c4
+ bl_0_4 br_0_4 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c4
+ bl_0_4 br_0_4 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c4
+ bl_0_4 br_0_4 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c4
+ bl_0_4 br_0_4 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c4
+ bl_0_4 br_0_4 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c4
+ bl_0_4 br_0_4 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c4
+ bl_0_4 br_0_4 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c4
+ bl_0_4 br_0_4 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c4
+ bl_0_4 br_0_4 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c4
+ bl_0_4 br_0_4 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c4
+ bl_0_4 br_0_4 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c4
+ bl_0_4 br_0_4 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c4
+ bl_0_4 br_0_4 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c4
+ bl_0_4 br_0_4 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c4
+ bl_0_4 br_0_4 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c4
+ bl_0_4 br_0_4 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c4
+ bl_0_4 br_0_4 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c4
+ bl_0_4 br_0_4 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c4
+ bl_0_4 br_0_4 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c4
+ bl_0_4 br_0_4 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c4
+ bl_0_4 br_0_4 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c4
+ bl_0_4 br_0_4 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c4
+ bl_0_4 br_0_4 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c4
+ bl_0_4 br_0_4 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c4
+ bl_0_4 br_0_4 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c4
+ bl_0_4 br_0_4 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c4
+ bl_0_4 br_0_4 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c4
+ bl_0_4 br_0_4 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c4
+ bl_0_4 br_0_4 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c4
+ bl_0_4 br_0_4 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c4
+ bl_0_4 br_0_4 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c4
+ bl_0_4 br_0_4 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c4
+ bl_0_4 br_0_4 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c4
+ bl_0_4 br_0_4 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c4
+ bl_0_4 br_0_4 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c4
+ bl_0_4 br_0_4 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c4
+ bl_0_4 br_0_4 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c4
+ bl_0_4 br_0_4 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c4
+ bl_0_4 br_0_4 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c4
+ bl_0_4 br_0_4 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c4
+ bl_0_4 br_0_4 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c4
+ bl_0_4 br_0_4 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c4
+ bl_0_4 br_0_4 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c4
+ bl_0_4 br_0_4 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c4
+ bl_0_4 br_0_4 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c4
+ bl_0_4 br_0_4 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c4
+ bl_0_4 br_0_4 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c4
+ bl_0_4 br_0_4 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c4
+ bl_0_4 br_0_4 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c4
+ bl_0_4 br_0_4 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c4
+ bl_0_4 br_0_4 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c4
+ bl_0_4 br_0_4 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c4
+ bl_0_4 br_0_4 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c4
+ bl_0_4 br_0_4 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c4
+ bl_0_4 br_0_4 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c4
+ bl_0_4 br_0_4 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c4
+ bl_0_4 br_0_4 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c4
+ bl_0_4 br_0_4 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c4
+ bl_0_4 br_0_4 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c4
+ bl_0_4 br_0_4 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c4
+ bl_0_4 br_0_4 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c4
+ bl_0_4 br_0_4 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c4
+ bl_0_4 br_0_4 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c4
+ bl_0_4 br_0_4 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c4
+ bl_0_4 br_0_4 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c4
+ bl_0_4 br_0_4 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c4
+ bl_0_4 br_0_4 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c4
+ bl_0_4 br_0_4 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c4
+ bl_0_4 br_0_4 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c4
+ bl_0_4 br_0_4 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c4
+ bl_0_4 br_0_4 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c4
+ bl_0_4 br_0_4 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c4
+ bl_0_4 br_0_4 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c4
+ bl_0_4 br_0_4 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c4
+ bl_0_4 br_0_4 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c4
+ bl_0_4 br_0_4 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c4
+ bl_0_4 br_0_4 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c4
+ bl_0_4 br_0_4 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c5
+ bl_0_5 br_0_5 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c5
+ bl_0_5 br_0_5 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c5
+ bl_0_5 br_0_5 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c5
+ bl_0_5 br_0_5 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c5
+ bl_0_5 br_0_5 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c5
+ bl_0_5 br_0_5 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c5
+ bl_0_5 br_0_5 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c5
+ bl_0_5 br_0_5 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c5
+ bl_0_5 br_0_5 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c5
+ bl_0_5 br_0_5 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c5
+ bl_0_5 br_0_5 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c5
+ bl_0_5 br_0_5 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c5
+ bl_0_5 br_0_5 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c5
+ bl_0_5 br_0_5 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c5
+ bl_0_5 br_0_5 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c5
+ bl_0_5 br_0_5 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c5
+ bl_0_5 br_0_5 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c5
+ bl_0_5 br_0_5 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c5
+ bl_0_5 br_0_5 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c5
+ bl_0_5 br_0_5 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c5
+ bl_0_5 br_0_5 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c5
+ bl_0_5 br_0_5 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c5
+ bl_0_5 br_0_5 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c5
+ bl_0_5 br_0_5 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c5
+ bl_0_5 br_0_5 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c5
+ bl_0_5 br_0_5 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c5
+ bl_0_5 br_0_5 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c5
+ bl_0_5 br_0_5 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c5
+ bl_0_5 br_0_5 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c5
+ bl_0_5 br_0_5 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c5
+ bl_0_5 br_0_5 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c5
+ bl_0_5 br_0_5 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c5
+ bl_0_5 br_0_5 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c5
+ bl_0_5 br_0_5 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c5
+ bl_0_5 br_0_5 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c5
+ bl_0_5 br_0_5 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c5
+ bl_0_5 br_0_5 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c5
+ bl_0_5 br_0_5 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c5
+ bl_0_5 br_0_5 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c5
+ bl_0_5 br_0_5 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c5
+ bl_0_5 br_0_5 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c5
+ bl_0_5 br_0_5 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c5
+ bl_0_5 br_0_5 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c5
+ bl_0_5 br_0_5 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c5
+ bl_0_5 br_0_5 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c5
+ bl_0_5 br_0_5 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c5
+ bl_0_5 br_0_5 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c5
+ bl_0_5 br_0_5 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c5
+ bl_0_5 br_0_5 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c5
+ bl_0_5 br_0_5 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c5
+ bl_0_5 br_0_5 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c5
+ bl_0_5 br_0_5 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c5
+ bl_0_5 br_0_5 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c5
+ bl_0_5 br_0_5 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c5
+ bl_0_5 br_0_5 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c5
+ bl_0_5 br_0_5 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c5
+ bl_0_5 br_0_5 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c5
+ bl_0_5 br_0_5 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c5
+ bl_0_5 br_0_5 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c5
+ bl_0_5 br_0_5 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c5
+ bl_0_5 br_0_5 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c5
+ bl_0_5 br_0_5 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c5
+ bl_0_5 br_0_5 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c5
+ bl_0_5 br_0_5 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c5
+ bl_0_5 br_0_5 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c5
+ bl_0_5 br_0_5 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c5
+ bl_0_5 br_0_5 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c5
+ bl_0_5 br_0_5 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c5
+ bl_0_5 br_0_5 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c5
+ bl_0_5 br_0_5 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c5
+ bl_0_5 br_0_5 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c5
+ bl_0_5 br_0_5 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c5
+ bl_0_5 br_0_5 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c5
+ bl_0_5 br_0_5 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c5
+ bl_0_5 br_0_5 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c5
+ bl_0_5 br_0_5 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c5
+ bl_0_5 br_0_5 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c5
+ bl_0_5 br_0_5 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c5
+ bl_0_5 br_0_5 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c5
+ bl_0_5 br_0_5 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c5
+ bl_0_5 br_0_5 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c5
+ bl_0_5 br_0_5 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c5
+ bl_0_5 br_0_5 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c5
+ bl_0_5 br_0_5 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c5
+ bl_0_5 br_0_5 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c5
+ bl_0_5 br_0_5 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c5
+ bl_0_5 br_0_5 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c5
+ bl_0_5 br_0_5 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c5
+ bl_0_5 br_0_5 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c5
+ bl_0_5 br_0_5 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c5
+ bl_0_5 br_0_5 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c5
+ bl_0_5 br_0_5 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c5
+ bl_0_5 br_0_5 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c5
+ bl_0_5 br_0_5 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c5
+ bl_0_5 br_0_5 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c5
+ bl_0_5 br_0_5 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c5
+ bl_0_5 br_0_5 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c5
+ bl_0_5 br_0_5 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c5
+ bl_0_5 br_0_5 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c5
+ bl_0_5 br_0_5 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c5
+ bl_0_5 br_0_5 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c5
+ bl_0_5 br_0_5 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c5
+ bl_0_5 br_0_5 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c5
+ bl_0_5 br_0_5 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c5
+ bl_0_5 br_0_5 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c5
+ bl_0_5 br_0_5 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c5
+ bl_0_5 br_0_5 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c5
+ bl_0_5 br_0_5 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c5
+ bl_0_5 br_0_5 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c5
+ bl_0_5 br_0_5 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c5
+ bl_0_5 br_0_5 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c5
+ bl_0_5 br_0_5 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c5
+ bl_0_5 br_0_5 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c5
+ bl_0_5 br_0_5 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c5
+ bl_0_5 br_0_5 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c5
+ bl_0_5 br_0_5 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c5
+ bl_0_5 br_0_5 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c5
+ bl_0_5 br_0_5 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c5
+ bl_0_5 br_0_5 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c5
+ bl_0_5 br_0_5 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c5
+ bl_0_5 br_0_5 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c5
+ bl_0_5 br_0_5 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c5
+ bl_0_5 br_0_5 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c5
+ bl_0_5 br_0_5 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c5
+ bl_0_5 br_0_5 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c5
+ bl_0_5 br_0_5 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c5
+ bl_0_5 br_0_5 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c5
+ bl_0_5 br_0_5 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c5
+ bl_0_5 br_0_5 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c5
+ bl_0_5 br_0_5 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c5
+ bl_0_5 br_0_5 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c5
+ bl_0_5 br_0_5 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c5
+ bl_0_5 br_0_5 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c5
+ bl_0_5 br_0_5 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c5
+ bl_0_5 br_0_5 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c5
+ bl_0_5 br_0_5 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c5
+ bl_0_5 br_0_5 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c5
+ bl_0_5 br_0_5 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c5
+ bl_0_5 br_0_5 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c5
+ bl_0_5 br_0_5 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c5
+ bl_0_5 br_0_5 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c5
+ bl_0_5 br_0_5 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c5
+ bl_0_5 br_0_5 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c5
+ bl_0_5 br_0_5 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c5
+ bl_0_5 br_0_5 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c5
+ bl_0_5 br_0_5 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c5
+ bl_0_5 br_0_5 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c5
+ bl_0_5 br_0_5 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c5
+ bl_0_5 br_0_5 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c5
+ bl_0_5 br_0_5 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c5
+ bl_0_5 br_0_5 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c5
+ bl_0_5 br_0_5 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c5
+ bl_0_5 br_0_5 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c5
+ bl_0_5 br_0_5 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c5
+ bl_0_5 br_0_5 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c5
+ bl_0_5 br_0_5 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c5
+ bl_0_5 br_0_5 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c5
+ bl_0_5 br_0_5 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c5
+ bl_0_5 br_0_5 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c5
+ bl_0_5 br_0_5 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c5
+ bl_0_5 br_0_5 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c5
+ bl_0_5 br_0_5 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c5
+ bl_0_5 br_0_5 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c5
+ bl_0_5 br_0_5 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c5
+ bl_0_5 br_0_5 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c5
+ bl_0_5 br_0_5 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c5
+ bl_0_5 br_0_5 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c5
+ bl_0_5 br_0_5 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c5
+ bl_0_5 br_0_5 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c5
+ bl_0_5 br_0_5 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c5
+ bl_0_5 br_0_5 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c5
+ bl_0_5 br_0_5 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c5
+ bl_0_5 br_0_5 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c5
+ bl_0_5 br_0_5 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c5
+ bl_0_5 br_0_5 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c5
+ bl_0_5 br_0_5 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c5
+ bl_0_5 br_0_5 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c5
+ bl_0_5 br_0_5 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c5
+ bl_0_5 br_0_5 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c5
+ bl_0_5 br_0_5 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c5
+ bl_0_5 br_0_5 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c5
+ bl_0_5 br_0_5 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c5
+ bl_0_5 br_0_5 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c5
+ bl_0_5 br_0_5 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c5
+ bl_0_5 br_0_5 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c5
+ bl_0_5 br_0_5 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c5
+ bl_0_5 br_0_5 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c5
+ bl_0_5 br_0_5 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c5
+ bl_0_5 br_0_5 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c5
+ bl_0_5 br_0_5 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c5
+ bl_0_5 br_0_5 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c5
+ bl_0_5 br_0_5 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c5
+ bl_0_5 br_0_5 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c5
+ bl_0_5 br_0_5 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c5
+ bl_0_5 br_0_5 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c5
+ bl_0_5 br_0_5 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c5
+ bl_0_5 br_0_5 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c5
+ bl_0_5 br_0_5 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c5
+ bl_0_5 br_0_5 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c5
+ bl_0_5 br_0_5 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c5
+ bl_0_5 br_0_5 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c5
+ bl_0_5 br_0_5 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c5
+ bl_0_5 br_0_5 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c5
+ bl_0_5 br_0_5 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c5
+ bl_0_5 br_0_5 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c5
+ bl_0_5 br_0_5 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c5
+ bl_0_5 br_0_5 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c5
+ bl_0_5 br_0_5 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c5
+ bl_0_5 br_0_5 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c5
+ bl_0_5 br_0_5 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c5
+ bl_0_5 br_0_5 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c5
+ bl_0_5 br_0_5 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c5
+ bl_0_5 br_0_5 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c5
+ bl_0_5 br_0_5 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c5
+ bl_0_5 br_0_5 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c5
+ bl_0_5 br_0_5 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c5
+ bl_0_5 br_0_5 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c5
+ bl_0_5 br_0_5 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c5
+ bl_0_5 br_0_5 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c5
+ bl_0_5 br_0_5 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c5
+ bl_0_5 br_0_5 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c5
+ bl_0_5 br_0_5 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c5
+ bl_0_5 br_0_5 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c5
+ bl_0_5 br_0_5 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c5
+ bl_0_5 br_0_5 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c5
+ bl_0_5 br_0_5 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c5
+ bl_0_5 br_0_5 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c5
+ bl_0_5 br_0_5 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c5
+ bl_0_5 br_0_5 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c5
+ bl_0_5 br_0_5 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c5
+ bl_0_5 br_0_5 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c5
+ bl_0_5 br_0_5 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c5
+ bl_0_5 br_0_5 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c5
+ bl_0_5 br_0_5 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c5
+ bl_0_5 br_0_5 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c5
+ bl_0_5 br_0_5 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c5
+ bl_0_5 br_0_5 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c5
+ bl_0_5 br_0_5 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c5
+ bl_0_5 br_0_5 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c5
+ bl_0_5 br_0_5 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c5
+ bl_0_5 br_0_5 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c5
+ bl_0_5 br_0_5 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c5
+ bl_0_5 br_0_5 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c5
+ bl_0_5 br_0_5 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c5
+ bl_0_5 br_0_5 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c5
+ bl_0_5 br_0_5 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c5
+ bl_0_5 br_0_5 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c5
+ bl_0_5 br_0_5 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c5
+ bl_0_5 br_0_5 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c5
+ bl_0_5 br_0_5 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c5
+ bl_0_5 br_0_5 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c5
+ bl_0_5 br_0_5 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c5
+ bl_0_5 br_0_5 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c5
+ bl_0_5 br_0_5 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c5
+ bl_0_5 br_0_5 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c5
+ bl_0_5 br_0_5 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c6
+ bl_0_6 br_0_6 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c6
+ bl_0_6 br_0_6 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c6
+ bl_0_6 br_0_6 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c6
+ bl_0_6 br_0_6 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c6
+ bl_0_6 br_0_6 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c6
+ bl_0_6 br_0_6 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c6
+ bl_0_6 br_0_6 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c6
+ bl_0_6 br_0_6 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c6
+ bl_0_6 br_0_6 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c6
+ bl_0_6 br_0_6 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c6
+ bl_0_6 br_0_6 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c6
+ bl_0_6 br_0_6 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c6
+ bl_0_6 br_0_6 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c6
+ bl_0_6 br_0_6 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c6
+ bl_0_6 br_0_6 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c6
+ bl_0_6 br_0_6 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c6
+ bl_0_6 br_0_6 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c6
+ bl_0_6 br_0_6 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c6
+ bl_0_6 br_0_6 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c6
+ bl_0_6 br_0_6 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c6
+ bl_0_6 br_0_6 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c6
+ bl_0_6 br_0_6 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c6
+ bl_0_6 br_0_6 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c6
+ bl_0_6 br_0_6 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c6
+ bl_0_6 br_0_6 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c6
+ bl_0_6 br_0_6 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c6
+ bl_0_6 br_0_6 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c6
+ bl_0_6 br_0_6 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c6
+ bl_0_6 br_0_6 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c6
+ bl_0_6 br_0_6 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c6
+ bl_0_6 br_0_6 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c6
+ bl_0_6 br_0_6 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c6
+ bl_0_6 br_0_6 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c6
+ bl_0_6 br_0_6 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c6
+ bl_0_6 br_0_6 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c6
+ bl_0_6 br_0_6 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c6
+ bl_0_6 br_0_6 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c6
+ bl_0_6 br_0_6 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c6
+ bl_0_6 br_0_6 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c6
+ bl_0_6 br_0_6 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c6
+ bl_0_6 br_0_6 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c6
+ bl_0_6 br_0_6 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c6
+ bl_0_6 br_0_6 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c6
+ bl_0_6 br_0_6 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c6
+ bl_0_6 br_0_6 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c6
+ bl_0_6 br_0_6 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c6
+ bl_0_6 br_0_6 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c6
+ bl_0_6 br_0_6 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c6
+ bl_0_6 br_0_6 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c6
+ bl_0_6 br_0_6 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c6
+ bl_0_6 br_0_6 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c6
+ bl_0_6 br_0_6 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c6
+ bl_0_6 br_0_6 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c6
+ bl_0_6 br_0_6 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c6
+ bl_0_6 br_0_6 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c6
+ bl_0_6 br_0_6 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c6
+ bl_0_6 br_0_6 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c6
+ bl_0_6 br_0_6 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c6
+ bl_0_6 br_0_6 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c6
+ bl_0_6 br_0_6 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c6
+ bl_0_6 br_0_6 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c6
+ bl_0_6 br_0_6 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c6
+ bl_0_6 br_0_6 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c6
+ bl_0_6 br_0_6 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c6
+ bl_0_6 br_0_6 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c6
+ bl_0_6 br_0_6 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c6
+ bl_0_6 br_0_6 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c6
+ bl_0_6 br_0_6 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c6
+ bl_0_6 br_0_6 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c6
+ bl_0_6 br_0_6 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c6
+ bl_0_6 br_0_6 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c6
+ bl_0_6 br_0_6 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c6
+ bl_0_6 br_0_6 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c6
+ bl_0_6 br_0_6 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c6
+ bl_0_6 br_0_6 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c6
+ bl_0_6 br_0_6 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c6
+ bl_0_6 br_0_6 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c6
+ bl_0_6 br_0_6 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c6
+ bl_0_6 br_0_6 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c6
+ bl_0_6 br_0_6 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c6
+ bl_0_6 br_0_6 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c6
+ bl_0_6 br_0_6 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c6
+ bl_0_6 br_0_6 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c6
+ bl_0_6 br_0_6 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c6
+ bl_0_6 br_0_6 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c6
+ bl_0_6 br_0_6 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c6
+ bl_0_6 br_0_6 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c6
+ bl_0_6 br_0_6 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c6
+ bl_0_6 br_0_6 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c6
+ bl_0_6 br_0_6 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c6
+ bl_0_6 br_0_6 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c6
+ bl_0_6 br_0_6 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c6
+ bl_0_6 br_0_6 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c6
+ bl_0_6 br_0_6 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c6
+ bl_0_6 br_0_6 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c6
+ bl_0_6 br_0_6 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c6
+ bl_0_6 br_0_6 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c6
+ bl_0_6 br_0_6 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c6
+ bl_0_6 br_0_6 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c6
+ bl_0_6 br_0_6 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c6
+ bl_0_6 br_0_6 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c6
+ bl_0_6 br_0_6 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c6
+ bl_0_6 br_0_6 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c6
+ bl_0_6 br_0_6 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c6
+ bl_0_6 br_0_6 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c6
+ bl_0_6 br_0_6 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c6
+ bl_0_6 br_0_6 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c6
+ bl_0_6 br_0_6 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c6
+ bl_0_6 br_0_6 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c6
+ bl_0_6 br_0_6 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c6
+ bl_0_6 br_0_6 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c6
+ bl_0_6 br_0_6 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c6
+ bl_0_6 br_0_6 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c6
+ bl_0_6 br_0_6 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c6
+ bl_0_6 br_0_6 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c6
+ bl_0_6 br_0_6 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c6
+ bl_0_6 br_0_6 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c6
+ bl_0_6 br_0_6 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c6
+ bl_0_6 br_0_6 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c6
+ bl_0_6 br_0_6 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c6
+ bl_0_6 br_0_6 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c6
+ bl_0_6 br_0_6 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c6
+ bl_0_6 br_0_6 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c6
+ bl_0_6 br_0_6 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c6
+ bl_0_6 br_0_6 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c6
+ bl_0_6 br_0_6 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c6
+ bl_0_6 br_0_6 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c6
+ bl_0_6 br_0_6 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c6
+ bl_0_6 br_0_6 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c6
+ bl_0_6 br_0_6 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c6
+ bl_0_6 br_0_6 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c6
+ bl_0_6 br_0_6 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c6
+ bl_0_6 br_0_6 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c6
+ bl_0_6 br_0_6 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c6
+ bl_0_6 br_0_6 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c6
+ bl_0_6 br_0_6 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c6
+ bl_0_6 br_0_6 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c6
+ bl_0_6 br_0_6 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c6
+ bl_0_6 br_0_6 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c6
+ bl_0_6 br_0_6 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c6
+ bl_0_6 br_0_6 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c6
+ bl_0_6 br_0_6 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c6
+ bl_0_6 br_0_6 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c6
+ bl_0_6 br_0_6 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c6
+ bl_0_6 br_0_6 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c6
+ bl_0_6 br_0_6 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c6
+ bl_0_6 br_0_6 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c6
+ bl_0_6 br_0_6 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c6
+ bl_0_6 br_0_6 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c6
+ bl_0_6 br_0_6 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c6
+ bl_0_6 br_0_6 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c6
+ bl_0_6 br_0_6 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c6
+ bl_0_6 br_0_6 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c6
+ bl_0_6 br_0_6 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c6
+ bl_0_6 br_0_6 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c6
+ bl_0_6 br_0_6 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c6
+ bl_0_6 br_0_6 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c6
+ bl_0_6 br_0_6 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c6
+ bl_0_6 br_0_6 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c6
+ bl_0_6 br_0_6 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c6
+ bl_0_6 br_0_6 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c6
+ bl_0_6 br_0_6 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c6
+ bl_0_6 br_0_6 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c6
+ bl_0_6 br_0_6 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c6
+ bl_0_6 br_0_6 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c6
+ bl_0_6 br_0_6 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c6
+ bl_0_6 br_0_6 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c6
+ bl_0_6 br_0_6 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c6
+ bl_0_6 br_0_6 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c6
+ bl_0_6 br_0_6 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c6
+ bl_0_6 br_0_6 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c6
+ bl_0_6 br_0_6 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c6
+ bl_0_6 br_0_6 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c6
+ bl_0_6 br_0_6 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c6
+ bl_0_6 br_0_6 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c6
+ bl_0_6 br_0_6 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c6
+ bl_0_6 br_0_6 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c6
+ bl_0_6 br_0_6 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c6
+ bl_0_6 br_0_6 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c6
+ bl_0_6 br_0_6 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c6
+ bl_0_6 br_0_6 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c6
+ bl_0_6 br_0_6 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c6
+ bl_0_6 br_0_6 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c6
+ bl_0_6 br_0_6 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c6
+ bl_0_6 br_0_6 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c6
+ bl_0_6 br_0_6 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c6
+ bl_0_6 br_0_6 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c6
+ bl_0_6 br_0_6 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c6
+ bl_0_6 br_0_6 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c6
+ bl_0_6 br_0_6 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c6
+ bl_0_6 br_0_6 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c6
+ bl_0_6 br_0_6 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c6
+ bl_0_6 br_0_6 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c6
+ bl_0_6 br_0_6 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c6
+ bl_0_6 br_0_6 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c6
+ bl_0_6 br_0_6 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c6
+ bl_0_6 br_0_6 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c6
+ bl_0_6 br_0_6 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c6
+ bl_0_6 br_0_6 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c6
+ bl_0_6 br_0_6 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c6
+ bl_0_6 br_0_6 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c6
+ bl_0_6 br_0_6 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c6
+ bl_0_6 br_0_6 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c6
+ bl_0_6 br_0_6 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c6
+ bl_0_6 br_0_6 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c6
+ bl_0_6 br_0_6 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c6
+ bl_0_6 br_0_6 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c6
+ bl_0_6 br_0_6 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c6
+ bl_0_6 br_0_6 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c6
+ bl_0_6 br_0_6 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c6
+ bl_0_6 br_0_6 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c6
+ bl_0_6 br_0_6 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c6
+ bl_0_6 br_0_6 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c6
+ bl_0_6 br_0_6 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c6
+ bl_0_6 br_0_6 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c6
+ bl_0_6 br_0_6 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c6
+ bl_0_6 br_0_6 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c6
+ bl_0_6 br_0_6 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c6
+ bl_0_6 br_0_6 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c6
+ bl_0_6 br_0_6 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c6
+ bl_0_6 br_0_6 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c6
+ bl_0_6 br_0_6 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c6
+ bl_0_6 br_0_6 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c6
+ bl_0_6 br_0_6 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c6
+ bl_0_6 br_0_6 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c6
+ bl_0_6 br_0_6 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c6
+ bl_0_6 br_0_6 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c6
+ bl_0_6 br_0_6 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c6
+ bl_0_6 br_0_6 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c6
+ bl_0_6 br_0_6 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c6
+ bl_0_6 br_0_6 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c6
+ bl_0_6 br_0_6 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c6
+ bl_0_6 br_0_6 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c6
+ bl_0_6 br_0_6 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c6
+ bl_0_6 br_0_6 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c6
+ bl_0_6 br_0_6 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c6
+ bl_0_6 br_0_6 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c6
+ bl_0_6 br_0_6 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c6
+ bl_0_6 br_0_6 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c6
+ bl_0_6 br_0_6 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c6
+ bl_0_6 br_0_6 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c6
+ bl_0_6 br_0_6 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c6
+ bl_0_6 br_0_6 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c6
+ bl_0_6 br_0_6 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c6
+ bl_0_6 br_0_6 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c6
+ bl_0_6 br_0_6 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c6
+ bl_0_6 br_0_6 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c6
+ bl_0_6 br_0_6 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c6
+ bl_0_6 br_0_6 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c6
+ bl_0_6 br_0_6 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c6
+ bl_0_6 br_0_6 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c6
+ bl_0_6 br_0_6 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c6
+ bl_0_6 br_0_6 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c6
+ bl_0_6 br_0_6 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c6
+ bl_0_6 br_0_6 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c6
+ bl_0_6 br_0_6 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c7
+ bl_0_7 br_0_7 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c7
+ bl_0_7 br_0_7 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c7
+ bl_0_7 br_0_7 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c7
+ bl_0_7 br_0_7 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c7
+ bl_0_7 br_0_7 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c7
+ bl_0_7 br_0_7 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c7
+ bl_0_7 br_0_7 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c7
+ bl_0_7 br_0_7 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c7
+ bl_0_7 br_0_7 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c7
+ bl_0_7 br_0_7 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c7
+ bl_0_7 br_0_7 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c7
+ bl_0_7 br_0_7 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c7
+ bl_0_7 br_0_7 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c7
+ bl_0_7 br_0_7 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c7
+ bl_0_7 br_0_7 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c7
+ bl_0_7 br_0_7 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c7
+ bl_0_7 br_0_7 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c7
+ bl_0_7 br_0_7 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c7
+ bl_0_7 br_0_7 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c7
+ bl_0_7 br_0_7 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c7
+ bl_0_7 br_0_7 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c7
+ bl_0_7 br_0_7 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c7
+ bl_0_7 br_0_7 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c7
+ bl_0_7 br_0_7 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c7
+ bl_0_7 br_0_7 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c7
+ bl_0_7 br_0_7 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c7
+ bl_0_7 br_0_7 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c7
+ bl_0_7 br_0_7 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c7
+ bl_0_7 br_0_7 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c7
+ bl_0_7 br_0_7 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c7
+ bl_0_7 br_0_7 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c7
+ bl_0_7 br_0_7 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c7
+ bl_0_7 br_0_7 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c7
+ bl_0_7 br_0_7 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c7
+ bl_0_7 br_0_7 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c7
+ bl_0_7 br_0_7 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c7
+ bl_0_7 br_0_7 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c7
+ bl_0_7 br_0_7 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c7
+ bl_0_7 br_0_7 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c7
+ bl_0_7 br_0_7 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c7
+ bl_0_7 br_0_7 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c7
+ bl_0_7 br_0_7 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c7
+ bl_0_7 br_0_7 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c7
+ bl_0_7 br_0_7 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c7
+ bl_0_7 br_0_7 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c7
+ bl_0_7 br_0_7 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c7
+ bl_0_7 br_0_7 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c7
+ bl_0_7 br_0_7 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c7
+ bl_0_7 br_0_7 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c7
+ bl_0_7 br_0_7 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c7
+ bl_0_7 br_0_7 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c7
+ bl_0_7 br_0_7 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c7
+ bl_0_7 br_0_7 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c7
+ bl_0_7 br_0_7 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c7
+ bl_0_7 br_0_7 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c7
+ bl_0_7 br_0_7 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c7
+ bl_0_7 br_0_7 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c7
+ bl_0_7 br_0_7 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c7
+ bl_0_7 br_0_7 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c7
+ bl_0_7 br_0_7 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c7
+ bl_0_7 br_0_7 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c7
+ bl_0_7 br_0_7 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c7
+ bl_0_7 br_0_7 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c7
+ bl_0_7 br_0_7 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c7
+ bl_0_7 br_0_7 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c7
+ bl_0_7 br_0_7 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c7
+ bl_0_7 br_0_7 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c7
+ bl_0_7 br_0_7 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c7
+ bl_0_7 br_0_7 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c7
+ bl_0_7 br_0_7 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c7
+ bl_0_7 br_0_7 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c7
+ bl_0_7 br_0_7 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c7
+ bl_0_7 br_0_7 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c7
+ bl_0_7 br_0_7 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c7
+ bl_0_7 br_0_7 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c7
+ bl_0_7 br_0_7 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c7
+ bl_0_7 br_0_7 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c7
+ bl_0_7 br_0_7 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c7
+ bl_0_7 br_0_7 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c7
+ bl_0_7 br_0_7 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c7
+ bl_0_7 br_0_7 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c7
+ bl_0_7 br_0_7 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c7
+ bl_0_7 br_0_7 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c7
+ bl_0_7 br_0_7 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c7
+ bl_0_7 br_0_7 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c7
+ bl_0_7 br_0_7 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c7
+ bl_0_7 br_0_7 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c7
+ bl_0_7 br_0_7 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c7
+ bl_0_7 br_0_7 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c7
+ bl_0_7 br_0_7 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c7
+ bl_0_7 br_0_7 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c7
+ bl_0_7 br_0_7 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c7
+ bl_0_7 br_0_7 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c7
+ bl_0_7 br_0_7 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c7
+ bl_0_7 br_0_7 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c7
+ bl_0_7 br_0_7 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c7
+ bl_0_7 br_0_7 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c7
+ bl_0_7 br_0_7 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c7
+ bl_0_7 br_0_7 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c7
+ bl_0_7 br_0_7 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c7
+ bl_0_7 br_0_7 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c7
+ bl_0_7 br_0_7 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c7
+ bl_0_7 br_0_7 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c7
+ bl_0_7 br_0_7 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c7
+ bl_0_7 br_0_7 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c7
+ bl_0_7 br_0_7 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c7
+ bl_0_7 br_0_7 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c7
+ bl_0_7 br_0_7 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c7
+ bl_0_7 br_0_7 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c7
+ bl_0_7 br_0_7 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c7
+ bl_0_7 br_0_7 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c7
+ bl_0_7 br_0_7 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c7
+ bl_0_7 br_0_7 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c7
+ bl_0_7 br_0_7 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c7
+ bl_0_7 br_0_7 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c7
+ bl_0_7 br_0_7 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c7
+ bl_0_7 br_0_7 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c7
+ bl_0_7 br_0_7 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c7
+ bl_0_7 br_0_7 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c7
+ bl_0_7 br_0_7 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c7
+ bl_0_7 br_0_7 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c7
+ bl_0_7 br_0_7 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c7
+ bl_0_7 br_0_7 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c7
+ bl_0_7 br_0_7 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c7
+ bl_0_7 br_0_7 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c7
+ bl_0_7 br_0_7 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c7
+ bl_0_7 br_0_7 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c7
+ bl_0_7 br_0_7 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c7
+ bl_0_7 br_0_7 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c7
+ bl_0_7 br_0_7 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c7
+ bl_0_7 br_0_7 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c7
+ bl_0_7 br_0_7 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c7
+ bl_0_7 br_0_7 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c7
+ bl_0_7 br_0_7 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c7
+ bl_0_7 br_0_7 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c7
+ bl_0_7 br_0_7 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c7
+ bl_0_7 br_0_7 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c7
+ bl_0_7 br_0_7 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c7
+ bl_0_7 br_0_7 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c7
+ bl_0_7 br_0_7 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c7
+ bl_0_7 br_0_7 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c7
+ bl_0_7 br_0_7 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c7
+ bl_0_7 br_0_7 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c7
+ bl_0_7 br_0_7 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c7
+ bl_0_7 br_0_7 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c7
+ bl_0_7 br_0_7 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c7
+ bl_0_7 br_0_7 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c7
+ bl_0_7 br_0_7 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c7
+ bl_0_7 br_0_7 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c7
+ bl_0_7 br_0_7 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c7
+ bl_0_7 br_0_7 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c7
+ bl_0_7 br_0_7 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c7
+ bl_0_7 br_0_7 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c7
+ bl_0_7 br_0_7 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c7
+ bl_0_7 br_0_7 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c7
+ bl_0_7 br_0_7 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c7
+ bl_0_7 br_0_7 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c7
+ bl_0_7 br_0_7 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c7
+ bl_0_7 br_0_7 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c7
+ bl_0_7 br_0_7 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c7
+ bl_0_7 br_0_7 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c7
+ bl_0_7 br_0_7 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c7
+ bl_0_7 br_0_7 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c7
+ bl_0_7 br_0_7 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c7
+ bl_0_7 br_0_7 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c7
+ bl_0_7 br_0_7 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c7
+ bl_0_7 br_0_7 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c7
+ bl_0_7 br_0_7 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c7
+ bl_0_7 br_0_7 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c7
+ bl_0_7 br_0_7 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c7
+ bl_0_7 br_0_7 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c7
+ bl_0_7 br_0_7 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c7
+ bl_0_7 br_0_7 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c7
+ bl_0_7 br_0_7 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c7
+ bl_0_7 br_0_7 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c7
+ bl_0_7 br_0_7 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c7
+ bl_0_7 br_0_7 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c7
+ bl_0_7 br_0_7 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c7
+ bl_0_7 br_0_7 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c7
+ bl_0_7 br_0_7 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c7
+ bl_0_7 br_0_7 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c7
+ bl_0_7 br_0_7 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c7
+ bl_0_7 br_0_7 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c7
+ bl_0_7 br_0_7 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c7
+ bl_0_7 br_0_7 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c7
+ bl_0_7 br_0_7 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c7
+ bl_0_7 br_0_7 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c7
+ bl_0_7 br_0_7 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c7
+ bl_0_7 br_0_7 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c7
+ bl_0_7 br_0_7 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c7
+ bl_0_7 br_0_7 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c7
+ bl_0_7 br_0_7 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c7
+ bl_0_7 br_0_7 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c7
+ bl_0_7 br_0_7 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c7
+ bl_0_7 br_0_7 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c7
+ bl_0_7 br_0_7 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c7
+ bl_0_7 br_0_7 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c7
+ bl_0_7 br_0_7 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c7
+ bl_0_7 br_0_7 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c7
+ bl_0_7 br_0_7 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c7
+ bl_0_7 br_0_7 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c7
+ bl_0_7 br_0_7 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c7
+ bl_0_7 br_0_7 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c7
+ bl_0_7 br_0_7 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c7
+ bl_0_7 br_0_7 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c7
+ bl_0_7 br_0_7 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c7
+ bl_0_7 br_0_7 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c7
+ bl_0_7 br_0_7 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c7
+ bl_0_7 br_0_7 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c7
+ bl_0_7 br_0_7 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c7
+ bl_0_7 br_0_7 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c7
+ bl_0_7 br_0_7 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c7
+ bl_0_7 br_0_7 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c7
+ bl_0_7 br_0_7 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c7
+ bl_0_7 br_0_7 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c7
+ bl_0_7 br_0_7 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c7
+ bl_0_7 br_0_7 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c7
+ bl_0_7 br_0_7 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c7
+ bl_0_7 br_0_7 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c7
+ bl_0_7 br_0_7 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c7
+ bl_0_7 br_0_7 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c7
+ bl_0_7 br_0_7 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c7
+ bl_0_7 br_0_7 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c7
+ bl_0_7 br_0_7 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c7
+ bl_0_7 br_0_7 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c7
+ bl_0_7 br_0_7 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c7
+ bl_0_7 br_0_7 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c7
+ bl_0_7 br_0_7 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c7
+ bl_0_7 br_0_7 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c7
+ bl_0_7 br_0_7 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c7
+ bl_0_7 br_0_7 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c7
+ bl_0_7 br_0_7 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c7
+ bl_0_7 br_0_7 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c7
+ bl_0_7 br_0_7 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c7
+ bl_0_7 br_0_7 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c7
+ bl_0_7 br_0_7 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c7
+ bl_0_7 br_0_7 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c7
+ bl_0_7 br_0_7 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c7
+ bl_0_7 br_0_7 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c7
+ bl_0_7 br_0_7 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c7
+ bl_0_7 br_0_7 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c7
+ bl_0_7 br_0_7 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c7
+ bl_0_7 br_0_7 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c7
+ bl_0_7 br_0_7 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c7
+ bl_0_7 br_0_7 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c7
+ bl_0_7 br_0_7 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c7
+ bl_0_7 br_0_7 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c7
+ bl_0_7 br_0_7 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c7
+ bl_0_7 br_0_7 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c7
+ bl_0_7 br_0_7 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c7
+ bl_0_7 br_0_7 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c7
+ bl_0_7 br_0_7 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c7
+ bl_0_7 br_0_7 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c7
+ bl_0_7 br_0_7 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c7
+ bl_0_7 br_0_7 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c7
+ bl_0_7 br_0_7 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c8
+ bl_0_8 br_0_8 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c8
+ bl_0_8 br_0_8 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c8
+ bl_0_8 br_0_8 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c8
+ bl_0_8 br_0_8 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c8
+ bl_0_8 br_0_8 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c8
+ bl_0_8 br_0_8 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c8
+ bl_0_8 br_0_8 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c8
+ bl_0_8 br_0_8 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c8
+ bl_0_8 br_0_8 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c8
+ bl_0_8 br_0_8 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c8
+ bl_0_8 br_0_8 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c8
+ bl_0_8 br_0_8 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c8
+ bl_0_8 br_0_8 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c8
+ bl_0_8 br_0_8 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c8
+ bl_0_8 br_0_8 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c8
+ bl_0_8 br_0_8 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c8
+ bl_0_8 br_0_8 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c8
+ bl_0_8 br_0_8 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c8
+ bl_0_8 br_0_8 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c8
+ bl_0_8 br_0_8 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c8
+ bl_0_8 br_0_8 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c8
+ bl_0_8 br_0_8 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c8
+ bl_0_8 br_0_8 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c8
+ bl_0_8 br_0_8 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c8
+ bl_0_8 br_0_8 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c8
+ bl_0_8 br_0_8 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c8
+ bl_0_8 br_0_8 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c8
+ bl_0_8 br_0_8 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c8
+ bl_0_8 br_0_8 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c8
+ bl_0_8 br_0_8 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c8
+ bl_0_8 br_0_8 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c8
+ bl_0_8 br_0_8 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c8
+ bl_0_8 br_0_8 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c8
+ bl_0_8 br_0_8 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c8
+ bl_0_8 br_0_8 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c8
+ bl_0_8 br_0_8 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c8
+ bl_0_8 br_0_8 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c8
+ bl_0_8 br_0_8 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c8
+ bl_0_8 br_0_8 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c8
+ bl_0_8 br_0_8 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c8
+ bl_0_8 br_0_8 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c8
+ bl_0_8 br_0_8 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c8
+ bl_0_8 br_0_8 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c8
+ bl_0_8 br_0_8 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c8
+ bl_0_8 br_0_8 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c8
+ bl_0_8 br_0_8 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c8
+ bl_0_8 br_0_8 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c8
+ bl_0_8 br_0_8 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c8
+ bl_0_8 br_0_8 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c8
+ bl_0_8 br_0_8 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c8
+ bl_0_8 br_0_8 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c8
+ bl_0_8 br_0_8 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c8
+ bl_0_8 br_0_8 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c8
+ bl_0_8 br_0_8 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c8
+ bl_0_8 br_0_8 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c8
+ bl_0_8 br_0_8 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c8
+ bl_0_8 br_0_8 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c8
+ bl_0_8 br_0_8 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c8
+ bl_0_8 br_0_8 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c8
+ bl_0_8 br_0_8 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c8
+ bl_0_8 br_0_8 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c8
+ bl_0_8 br_0_8 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c8
+ bl_0_8 br_0_8 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c8
+ bl_0_8 br_0_8 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c8
+ bl_0_8 br_0_8 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c8
+ bl_0_8 br_0_8 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c8
+ bl_0_8 br_0_8 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c8
+ bl_0_8 br_0_8 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c8
+ bl_0_8 br_0_8 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c8
+ bl_0_8 br_0_8 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c8
+ bl_0_8 br_0_8 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c8
+ bl_0_8 br_0_8 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c8
+ bl_0_8 br_0_8 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c8
+ bl_0_8 br_0_8 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c8
+ bl_0_8 br_0_8 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c8
+ bl_0_8 br_0_8 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c8
+ bl_0_8 br_0_8 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c8
+ bl_0_8 br_0_8 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c8
+ bl_0_8 br_0_8 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c8
+ bl_0_8 br_0_8 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c8
+ bl_0_8 br_0_8 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c8
+ bl_0_8 br_0_8 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c8
+ bl_0_8 br_0_8 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c8
+ bl_0_8 br_0_8 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c8
+ bl_0_8 br_0_8 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c8
+ bl_0_8 br_0_8 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c8
+ bl_0_8 br_0_8 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c8
+ bl_0_8 br_0_8 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c8
+ bl_0_8 br_0_8 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c8
+ bl_0_8 br_0_8 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c8
+ bl_0_8 br_0_8 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c8
+ bl_0_8 br_0_8 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c8
+ bl_0_8 br_0_8 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c8
+ bl_0_8 br_0_8 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c8
+ bl_0_8 br_0_8 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c8
+ bl_0_8 br_0_8 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c8
+ bl_0_8 br_0_8 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c8
+ bl_0_8 br_0_8 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c8
+ bl_0_8 br_0_8 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c8
+ bl_0_8 br_0_8 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c8
+ bl_0_8 br_0_8 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c8
+ bl_0_8 br_0_8 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c8
+ bl_0_8 br_0_8 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c8
+ bl_0_8 br_0_8 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c8
+ bl_0_8 br_0_8 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c8
+ bl_0_8 br_0_8 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c8
+ bl_0_8 br_0_8 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c8
+ bl_0_8 br_0_8 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c8
+ bl_0_8 br_0_8 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c8
+ bl_0_8 br_0_8 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c8
+ bl_0_8 br_0_8 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c8
+ bl_0_8 br_0_8 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c8
+ bl_0_8 br_0_8 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c8
+ bl_0_8 br_0_8 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c8
+ bl_0_8 br_0_8 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c8
+ bl_0_8 br_0_8 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c8
+ bl_0_8 br_0_8 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c8
+ bl_0_8 br_0_8 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c8
+ bl_0_8 br_0_8 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c8
+ bl_0_8 br_0_8 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c8
+ bl_0_8 br_0_8 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c8
+ bl_0_8 br_0_8 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c8
+ bl_0_8 br_0_8 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c8
+ bl_0_8 br_0_8 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c8
+ bl_0_8 br_0_8 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c8
+ bl_0_8 br_0_8 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c8
+ bl_0_8 br_0_8 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c8
+ bl_0_8 br_0_8 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c8
+ bl_0_8 br_0_8 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c8
+ bl_0_8 br_0_8 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c8
+ bl_0_8 br_0_8 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c8
+ bl_0_8 br_0_8 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c8
+ bl_0_8 br_0_8 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c8
+ bl_0_8 br_0_8 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c8
+ bl_0_8 br_0_8 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c8
+ bl_0_8 br_0_8 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c8
+ bl_0_8 br_0_8 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c8
+ bl_0_8 br_0_8 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c8
+ bl_0_8 br_0_8 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c8
+ bl_0_8 br_0_8 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c8
+ bl_0_8 br_0_8 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c8
+ bl_0_8 br_0_8 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c8
+ bl_0_8 br_0_8 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c8
+ bl_0_8 br_0_8 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c8
+ bl_0_8 br_0_8 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c8
+ bl_0_8 br_0_8 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c8
+ bl_0_8 br_0_8 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c8
+ bl_0_8 br_0_8 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c8
+ bl_0_8 br_0_8 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c8
+ bl_0_8 br_0_8 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c8
+ bl_0_8 br_0_8 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c8
+ bl_0_8 br_0_8 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c8
+ bl_0_8 br_0_8 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c8
+ bl_0_8 br_0_8 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c8
+ bl_0_8 br_0_8 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c8
+ bl_0_8 br_0_8 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c8
+ bl_0_8 br_0_8 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c8
+ bl_0_8 br_0_8 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c8
+ bl_0_8 br_0_8 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c8
+ bl_0_8 br_0_8 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c8
+ bl_0_8 br_0_8 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c8
+ bl_0_8 br_0_8 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c8
+ bl_0_8 br_0_8 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c8
+ bl_0_8 br_0_8 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c8
+ bl_0_8 br_0_8 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c8
+ bl_0_8 br_0_8 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c8
+ bl_0_8 br_0_8 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c8
+ bl_0_8 br_0_8 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c8
+ bl_0_8 br_0_8 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c8
+ bl_0_8 br_0_8 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c8
+ bl_0_8 br_0_8 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c8
+ bl_0_8 br_0_8 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c8
+ bl_0_8 br_0_8 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c8
+ bl_0_8 br_0_8 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c8
+ bl_0_8 br_0_8 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c8
+ bl_0_8 br_0_8 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c8
+ bl_0_8 br_0_8 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c8
+ bl_0_8 br_0_8 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c8
+ bl_0_8 br_0_8 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c8
+ bl_0_8 br_0_8 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c8
+ bl_0_8 br_0_8 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c8
+ bl_0_8 br_0_8 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c8
+ bl_0_8 br_0_8 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c8
+ bl_0_8 br_0_8 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c8
+ bl_0_8 br_0_8 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c8
+ bl_0_8 br_0_8 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c8
+ bl_0_8 br_0_8 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c8
+ bl_0_8 br_0_8 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c8
+ bl_0_8 br_0_8 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c8
+ bl_0_8 br_0_8 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c8
+ bl_0_8 br_0_8 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c8
+ bl_0_8 br_0_8 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c8
+ bl_0_8 br_0_8 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c8
+ bl_0_8 br_0_8 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c8
+ bl_0_8 br_0_8 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c8
+ bl_0_8 br_0_8 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c8
+ bl_0_8 br_0_8 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c8
+ bl_0_8 br_0_8 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c8
+ bl_0_8 br_0_8 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c8
+ bl_0_8 br_0_8 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c8
+ bl_0_8 br_0_8 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c8
+ bl_0_8 br_0_8 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c8
+ bl_0_8 br_0_8 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c8
+ bl_0_8 br_0_8 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c8
+ bl_0_8 br_0_8 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c8
+ bl_0_8 br_0_8 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c8
+ bl_0_8 br_0_8 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c8
+ bl_0_8 br_0_8 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c8
+ bl_0_8 br_0_8 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c8
+ bl_0_8 br_0_8 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c8
+ bl_0_8 br_0_8 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c8
+ bl_0_8 br_0_8 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c8
+ bl_0_8 br_0_8 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c8
+ bl_0_8 br_0_8 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c8
+ bl_0_8 br_0_8 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c8
+ bl_0_8 br_0_8 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c8
+ bl_0_8 br_0_8 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c8
+ bl_0_8 br_0_8 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c8
+ bl_0_8 br_0_8 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c8
+ bl_0_8 br_0_8 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c8
+ bl_0_8 br_0_8 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c8
+ bl_0_8 br_0_8 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c8
+ bl_0_8 br_0_8 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c8
+ bl_0_8 br_0_8 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c8
+ bl_0_8 br_0_8 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c8
+ bl_0_8 br_0_8 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c8
+ bl_0_8 br_0_8 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c8
+ bl_0_8 br_0_8 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c8
+ bl_0_8 br_0_8 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c8
+ bl_0_8 br_0_8 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c8
+ bl_0_8 br_0_8 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c8
+ bl_0_8 br_0_8 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c8
+ bl_0_8 br_0_8 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c8
+ bl_0_8 br_0_8 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c8
+ bl_0_8 br_0_8 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c8
+ bl_0_8 br_0_8 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c8
+ bl_0_8 br_0_8 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c8
+ bl_0_8 br_0_8 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c8
+ bl_0_8 br_0_8 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c8
+ bl_0_8 br_0_8 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c8
+ bl_0_8 br_0_8 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c8
+ bl_0_8 br_0_8 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c8
+ bl_0_8 br_0_8 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c8
+ bl_0_8 br_0_8 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c8
+ bl_0_8 br_0_8 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c8
+ bl_0_8 br_0_8 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c8
+ bl_0_8 br_0_8 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c8
+ bl_0_8 br_0_8 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c8
+ bl_0_8 br_0_8 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c8
+ bl_0_8 br_0_8 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c8
+ bl_0_8 br_0_8 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c8
+ bl_0_8 br_0_8 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c8
+ bl_0_8 br_0_8 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c8
+ bl_0_8 br_0_8 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c8
+ bl_0_8 br_0_8 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c8
+ bl_0_8 br_0_8 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c9
+ bl_0_9 br_0_9 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c9
+ bl_0_9 br_0_9 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c9
+ bl_0_9 br_0_9 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c9
+ bl_0_9 br_0_9 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c9
+ bl_0_9 br_0_9 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c9
+ bl_0_9 br_0_9 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c9
+ bl_0_9 br_0_9 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c9
+ bl_0_9 br_0_9 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c9
+ bl_0_9 br_0_9 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c9
+ bl_0_9 br_0_9 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c9
+ bl_0_9 br_0_9 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c9
+ bl_0_9 br_0_9 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c9
+ bl_0_9 br_0_9 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c9
+ bl_0_9 br_0_9 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c9
+ bl_0_9 br_0_9 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c9
+ bl_0_9 br_0_9 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c9
+ bl_0_9 br_0_9 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c9
+ bl_0_9 br_0_9 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c9
+ bl_0_9 br_0_9 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c9
+ bl_0_9 br_0_9 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c9
+ bl_0_9 br_0_9 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c9
+ bl_0_9 br_0_9 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c9
+ bl_0_9 br_0_9 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c9
+ bl_0_9 br_0_9 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c9
+ bl_0_9 br_0_9 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c9
+ bl_0_9 br_0_9 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c9
+ bl_0_9 br_0_9 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c9
+ bl_0_9 br_0_9 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c9
+ bl_0_9 br_0_9 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c9
+ bl_0_9 br_0_9 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c9
+ bl_0_9 br_0_9 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c9
+ bl_0_9 br_0_9 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c9
+ bl_0_9 br_0_9 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c9
+ bl_0_9 br_0_9 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c9
+ bl_0_9 br_0_9 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c9
+ bl_0_9 br_0_9 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c9
+ bl_0_9 br_0_9 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c9
+ bl_0_9 br_0_9 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c9
+ bl_0_9 br_0_9 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c9
+ bl_0_9 br_0_9 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c9
+ bl_0_9 br_0_9 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c9
+ bl_0_9 br_0_9 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c9
+ bl_0_9 br_0_9 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c9
+ bl_0_9 br_0_9 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c9
+ bl_0_9 br_0_9 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c9
+ bl_0_9 br_0_9 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c9
+ bl_0_9 br_0_9 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c9
+ bl_0_9 br_0_9 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c9
+ bl_0_9 br_0_9 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c9
+ bl_0_9 br_0_9 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c9
+ bl_0_9 br_0_9 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c9
+ bl_0_9 br_0_9 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c9
+ bl_0_9 br_0_9 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c9
+ bl_0_9 br_0_9 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c9
+ bl_0_9 br_0_9 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c9
+ bl_0_9 br_0_9 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c9
+ bl_0_9 br_0_9 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c9
+ bl_0_9 br_0_9 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c9
+ bl_0_9 br_0_9 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c9
+ bl_0_9 br_0_9 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c9
+ bl_0_9 br_0_9 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c9
+ bl_0_9 br_0_9 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c9
+ bl_0_9 br_0_9 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c9
+ bl_0_9 br_0_9 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c9
+ bl_0_9 br_0_9 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c9
+ bl_0_9 br_0_9 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c9
+ bl_0_9 br_0_9 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c9
+ bl_0_9 br_0_9 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c9
+ bl_0_9 br_0_9 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c9
+ bl_0_9 br_0_9 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c9
+ bl_0_9 br_0_9 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c9
+ bl_0_9 br_0_9 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c9
+ bl_0_9 br_0_9 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c9
+ bl_0_9 br_0_9 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c9
+ bl_0_9 br_0_9 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c9
+ bl_0_9 br_0_9 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c9
+ bl_0_9 br_0_9 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c9
+ bl_0_9 br_0_9 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c9
+ bl_0_9 br_0_9 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c9
+ bl_0_9 br_0_9 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c9
+ bl_0_9 br_0_9 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c9
+ bl_0_9 br_0_9 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c9
+ bl_0_9 br_0_9 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c9
+ bl_0_9 br_0_9 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c9
+ bl_0_9 br_0_9 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c9
+ bl_0_9 br_0_9 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c9
+ bl_0_9 br_0_9 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c9
+ bl_0_9 br_0_9 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c9
+ bl_0_9 br_0_9 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c9
+ bl_0_9 br_0_9 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c9
+ bl_0_9 br_0_9 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c9
+ bl_0_9 br_0_9 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c9
+ bl_0_9 br_0_9 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c9
+ bl_0_9 br_0_9 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c9
+ bl_0_9 br_0_9 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c9
+ bl_0_9 br_0_9 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c9
+ bl_0_9 br_0_9 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c9
+ bl_0_9 br_0_9 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c9
+ bl_0_9 br_0_9 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c9
+ bl_0_9 br_0_9 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c9
+ bl_0_9 br_0_9 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c9
+ bl_0_9 br_0_9 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c9
+ bl_0_9 br_0_9 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c9
+ bl_0_9 br_0_9 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c9
+ bl_0_9 br_0_9 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c9
+ bl_0_9 br_0_9 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c9
+ bl_0_9 br_0_9 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c9
+ bl_0_9 br_0_9 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c9
+ bl_0_9 br_0_9 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c9
+ bl_0_9 br_0_9 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c9
+ bl_0_9 br_0_9 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c9
+ bl_0_9 br_0_9 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c9
+ bl_0_9 br_0_9 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c9
+ bl_0_9 br_0_9 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c9
+ bl_0_9 br_0_9 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c9
+ bl_0_9 br_0_9 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c9
+ bl_0_9 br_0_9 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c9
+ bl_0_9 br_0_9 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c9
+ bl_0_9 br_0_9 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c9
+ bl_0_9 br_0_9 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c9
+ bl_0_9 br_0_9 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c9
+ bl_0_9 br_0_9 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c9
+ bl_0_9 br_0_9 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c9
+ bl_0_9 br_0_9 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c9
+ bl_0_9 br_0_9 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c9
+ bl_0_9 br_0_9 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c9
+ bl_0_9 br_0_9 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c9
+ bl_0_9 br_0_9 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c9
+ bl_0_9 br_0_9 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c9
+ bl_0_9 br_0_9 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c9
+ bl_0_9 br_0_9 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c9
+ bl_0_9 br_0_9 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c9
+ bl_0_9 br_0_9 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c9
+ bl_0_9 br_0_9 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c9
+ bl_0_9 br_0_9 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c9
+ bl_0_9 br_0_9 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c9
+ bl_0_9 br_0_9 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c9
+ bl_0_9 br_0_9 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c9
+ bl_0_9 br_0_9 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c9
+ bl_0_9 br_0_9 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c9
+ bl_0_9 br_0_9 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c9
+ bl_0_9 br_0_9 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c9
+ bl_0_9 br_0_9 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c9
+ bl_0_9 br_0_9 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c9
+ bl_0_9 br_0_9 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c9
+ bl_0_9 br_0_9 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c9
+ bl_0_9 br_0_9 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c9
+ bl_0_9 br_0_9 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c9
+ bl_0_9 br_0_9 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c9
+ bl_0_9 br_0_9 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c9
+ bl_0_9 br_0_9 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c9
+ bl_0_9 br_0_9 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c9
+ bl_0_9 br_0_9 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c9
+ bl_0_9 br_0_9 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c9
+ bl_0_9 br_0_9 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c9
+ bl_0_9 br_0_9 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c9
+ bl_0_9 br_0_9 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c9
+ bl_0_9 br_0_9 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c9
+ bl_0_9 br_0_9 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c9
+ bl_0_9 br_0_9 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c9
+ bl_0_9 br_0_9 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c9
+ bl_0_9 br_0_9 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c9
+ bl_0_9 br_0_9 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c9
+ bl_0_9 br_0_9 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c9
+ bl_0_9 br_0_9 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c9
+ bl_0_9 br_0_9 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c9
+ bl_0_9 br_0_9 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c9
+ bl_0_9 br_0_9 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c9
+ bl_0_9 br_0_9 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c9
+ bl_0_9 br_0_9 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c9
+ bl_0_9 br_0_9 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c9
+ bl_0_9 br_0_9 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c9
+ bl_0_9 br_0_9 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c9
+ bl_0_9 br_0_9 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c9
+ bl_0_9 br_0_9 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c9
+ bl_0_9 br_0_9 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c9
+ bl_0_9 br_0_9 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c9
+ bl_0_9 br_0_9 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c9
+ bl_0_9 br_0_9 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c9
+ bl_0_9 br_0_9 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c9
+ bl_0_9 br_0_9 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c9
+ bl_0_9 br_0_9 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c9
+ bl_0_9 br_0_9 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c9
+ bl_0_9 br_0_9 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c9
+ bl_0_9 br_0_9 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c9
+ bl_0_9 br_0_9 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c9
+ bl_0_9 br_0_9 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c9
+ bl_0_9 br_0_9 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c9
+ bl_0_9 br_0_9 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c9
+ bl_0_9 br_0_9 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c9
+ bl_0_9 br_0_9 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c9
+ bl_0_9 br_0_9 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c9
+ bl_0_9 br_0_9 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c9
+ bl_0_9 br_0_9 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c9
+ bl_0_9 br_0_9 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c9
+ bl_0_9 br_0_9 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c9
+ bl_0_9 br_0_9 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c9
+ bl_0_9 br_0_9 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c9
+ bl_0_9 br_0_9 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c9
+ bl_0_9 br_0_9 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c9
+ bl_0_9 br_0_9 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c9
+ bl_0_9 br_0_9 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c9
+ bl_0_9 br_0_9 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c9
+ bl_0_9 br_0_9 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c9
+ bl_0_9 br_0_9 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c9
+ bl_0_9 br_0_9 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c9
+ bl_0_9 br_0_9 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c9
+ bl_0_9 br_0_9 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c9
+ bl_0_9 br_0_9 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c9
+ bl_0_9 br_0_9 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c9
+ bl_0_9 br_0_9 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c9
+ bl_0_9 br_0_9 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c9
+ bl_0_9 br_0_9 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c9
+ bl_0_9 br_0_9 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c9
+ bl_0_9 br_0_9 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c9
+ bl_0_9 br_0_9 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c9
+ bl_0_9 br_0_9 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c9
+ bl_0_9 br_0_9 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c9
+ bl_0_9 br_0_9 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c9
+ bl_0_9 br_0_9 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c9
+ bl_0_9 br_0_9 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c9
+ bl_0_9 br_0_9 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c9
+ bl_0_9 br_0_9 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c9
+ bl_0_9 br_0_9 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c9
+ bl_0_9 br_0_9 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c9
+ bl_0_9 br_0_9 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c9
+ bl_0_9 br_0_9 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c9
+ bl_0_9 br_0_9 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c9
+ bl_0_9 br_0_9 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c9
+ bl_0_9 br_0_9 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c9
+ bl_0_9 br_0_9 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c9
+ bl_0_9 br_0_9 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c9
+ bl_0_9 br_0_9 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c9
+ bl_0_9 br_0_9 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c9
+ bl_0_9 br_0_9 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c9
+ bl_0_9 br_0_9 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c9
+ bl_0_9 br_0_9 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c9
+ bl_0_9 br_0_9 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c9
+ bl_0_9 br_0_9 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c9
+ bl_0_9 br_0_9 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c9
+ bl_0_9 br_0_9 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c9
+ bl_0_9 br_0_9 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c9
+ bl_0_9 br_0_9 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c9
+ bl_0_9 br_0_9 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c9
+ bl_0_9 br_0_9 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c9
+ bl_0_9 br_0_9 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c9
+ bl_0_9 br_0_9 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c9
+ bl_0_9 br_0_9 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c9
+ bl_0_9 br_0_9 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c9
+ bl_0_9 br_0_9 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c9
+ bl_0_9 br_0_9 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c9
+ bl_0_9 br_0_9 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c9
+ bl_0_9 br_0_9 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c9
+ bl_0_9 br_0_9 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c9
+ bl_0_9 br_0_9 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c9
+ bl_0_9 br_0_9 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c10
+ bl_0_10 br_0_10 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c10
+ bl_0_10 br_0_10 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c10
+ bl_0_10 br_0_10 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c10
+ bl_0_10 br_0_10 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c10
+ bl_0_10 br_0_10 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c10
+ bl_0_10 br_0_10 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c10
+ bl_0_10 br_0_10 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c10
+ bl_0_10 br_0_10 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c10
+ bl_0_10 br_0_10 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c10
+ bl_0_10 br_0_10 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c10
+ bl_0_10 br_0_10 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c10
+ bl_0_10 br_0_10 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c10
+ bl_0_10 br_0_10 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c10
+ bl_0_10 br_0_10 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c10
+ bl_0_10 br_0_10 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c10
+ bl_0_10 br_0_10 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c10
+ bl_0_10 br_0_10 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c10
+ bl_0_10 br_0_10 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c10
+ bl_0_10 br_0_10 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c10
+ bl_0_10 br_0_10 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c10
+ bl_0_10 br_0_10 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c10
+ bl_0_10 br_0_10 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c10
+ bl_0_10 br_0_10 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c10
+ bl_0_10 br_0_10 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c10
+ bl_0_10 br_0_10 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c10
+ bl_0_10 br_0_10 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c10
+ bl_0_10 br_0_10 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c10
+ bl_0_10 br_0_10 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c10
+ bl_0_10 br_0_10 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c10
+ bl_0_10 br_0_10 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c10
+ bl_0_10 br_0_10 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c10
+ bl_0_10 br_0_10 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c10
+ bl_0_10 br_0_10 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c10
+ bl_0_10 br_0_10 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c10
+ bl_0_10 br_0_10 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c10
+ bl_0_10 br_0_10 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c10
+ bl_0_10 br_0_10 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c10
+ bl_0_10 br_0_10 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c10
+ bl_0_10 br_0_10 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c10
+ bl_0_10 br_0_10 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c10
+ bl_0_10 br_0_10 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c10
+ bl_0_10 br_0_10 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c10
+ bl_0_10 br_0_10 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c10
+ bl_0_10 br_0_10 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c10
+ bl_0_10 br_0_10 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c10
+ bl_0_10 br_0_10 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c10
+ bl_0_10 br_0_10 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c10
+ bl_0_10 br_0_10 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c10
+ bl_0_10 br_0_10 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c10
+ bl_0_10 br_0_10 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c10
+ bl_0_10 br_0_10 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c10
+ bl_0_10 br_0_10 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c10
+ bl_0_10 br_0_10 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c10
+ bl_0_10 br_0_10 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c10
+ bl_0_10 br_0_10 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c10
+ bl_0_10 br_0_10 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c10
+ bl_0_10 br_0_10 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c10
+ bl_0_10 br_0_10 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c10
+ bl_0_10 br_0_10 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c10
+ bl_0_10 br_0_10 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c10
+ bl_0_10 br_0_10 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c10
+ bl_0_10 br_0_10 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c10
+ bl_0_10 br_0_10 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c10
+ bl_0_10 br_0_10 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c10
+ bl_0_10 br_0_10 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c10
+ bl_0_10 br_0_10 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c10
+ bl_0_10 br_0_10 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c10
+ bl_0_10 br_0_10 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c10
+ bl_0_10 br_0_10 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c10
+ bl_0_10 br_0_10 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c10
+ bl_0_10 br_0_10 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c10
+ bl_0_10 br_0_10 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c10
+ bl_0_10 br_0_10 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c10
+ bl_0_10 br_0_10 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c10
+ bl_0_10 br_0_10 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c10
+ bl_0_10 br_0_10 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c10
+ bl_0_10 br_0_10 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c10
+ bl_0_10 br_0_10 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c10
+ bl_0_10 br_0_10 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c10
+ bl_0_10 br_0_10 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c10
+ bl_0_10 br_0_10 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c10
+ bl_0_10 br_0_10 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c10
+ bl_0_10 br_0_10 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c10
+ bl_0_10 br_0_10 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c10
+ bl_0_10 br_0_10 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c10
+ bl_0_10 br_0_10 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c10
+ bl_0_10 br_0_10 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c10
+ bl_0_10 br_0_10 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c10
+ bl_0_10 br_0_10 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c10
+ bl_0_10 br_0_10 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c10
+ bl_0_10 br_0_10 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c10
+ bl_0_10 br_0_10 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c10
+ bl_0_10 br_0_10 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c10
+ bl_0_10 br_0_10 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c10
+ bl_0_10 br_0_10 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c10
+ bl_0_10 br_0_10 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c10
+ bl_0_10 br_0_10 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c10
+ bl_0_10 br_0_10 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c10
+ bl_0_10 br_0_10 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c10
+ bl_0_10 br_0_10 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c10
+ bl_0_10 br_0_10 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c10
+ bl_0_10 br_0_10 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c10
+ bl_0_10 br_0_10 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c10
+ bl_0_10 br_0_10 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c10
+ bl_0_10 br_0_10 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c10
+ bl_0_10 br_0_10 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c10
+ bl_0_10 br_0_10 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c10
+ bl_0_10 br_0_10 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c10
+ bl_0_10 br_0_10 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c10
+ bl_0_10 br_0_10 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c10
+ bl_0_10 br_0_10 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c10
+ bl_0_10 br_0_10 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c10
+ bl_0_10 br_0_10 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c10
+ bl_0_10 br_0_10 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c10
+ bl_0_10 br_0_10 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c10
+ bl_0_10 br_0_10 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c10
+ bl_0_10 br_0_10 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c10
+ bl_0_10 br_0_10 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c10
+ bl_0_10 br_0_10 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c10
+ bl_0_10 br_0_10 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c10
+ bl_0_10 br_0_10 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c10
+ bl_0_10 br_0_10 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c10
+ bl_0_10 br_0_10 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c10
+ bl_0_10 br_0_10 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c10
+ bl_0_10 br_0_10 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c10
+ bl_0_10 br_0_10 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c10
+ bl_0_10 br_0_10 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c10
+ bl_0_10 br_0_10 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c10
+ bl_0_10 br_0_10 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c10
+ bl_0_10 br_0_10 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c10
+ bl_0_10 br_0_10 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c10
+ bl_0_10 br_0_10 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c10
+ bl_0_10 br_0_10 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c10
+ bl_0_10 br_0_10 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c10
+ bl_0_10 br_0_10 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c10
+ bl_0_10 br_0_10 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c10
+ bl_0_10 br_0_10 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c10
+ bl_0_10 br_0_10 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c10
+ bl_0_10 br_0_10 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c10
+ bl_0_10 br_0_10 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c10
+ bl_0_10 br_0_10 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c10
+ bl_0_10 br_0_10 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c10
+ bl_0_10 br_0_10 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c10
+ bl_0_10 br_0_10 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c10
+ bl_0_10 br_0_10 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c10
+ bl_0_10 br_0_10 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c10
+ bl_0_10 br_0_10 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c10
+ bl_0_10 br_0_10 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c10
+ bl_0_10 br_0_10 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c10
+ bl_0_10 br_0_10 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c10
+ bl_0_10 br_0_10 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c10
+ bl_0_10 br_0_10 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c10
+ bl_0_10 br_0_10 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c10
+ bl_0_10 br_0_10 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c10
+ bl_0_10 br_0_10 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c10
+ bl_0_10 br_0_10 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c10
+ bl_0_10 br_0_10 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c10
+ bl_0_10 br_0_10 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c10
+ bl_0_10 br_0_10 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c10
+ bl_0_10 br_0_10 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c10
+ bl_0_10 br_0_10 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c10
+ bl_0_10 br_0_10 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c10
+ bl_0_10 br_0_10 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c10
+ bl_0_10 br_0_10 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c10
+ bl_0_10 br_0_10 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c10
+ bl_0_10 br_0_10 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c10
+ bl_0_10 br_0_10 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c10
+ bl_0_10 br_0_10 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c10
+ bl_0_10 br_0_10 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c10
+ bl_0_10 br_0_10 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c10
+ bl_0_10 br_0_10 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c10
+ bl_0_10 br_0_10 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c10
+ bl_0_10 br_0_10 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c10
+ bl_0_10 br_0_10 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c10
+ bl_0_10 br_0_10 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c10
+ bl_0_10 br_0_10 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c10
+ bl_0_10 br_0_10 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c10
+ bl_0_10 br_0_10 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c10
+ bl_0_10 br_0_10 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c10
+ bl_0_10 br_0_10 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c10
+ bl_0_10 br_0_10 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c10
+ bl_0_10 br_0_10 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c10
+ bl_0_10 br_0_10 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c10
+ bl_0_10 br_0_10 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c10
+ bl_0_10 br_0_10 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c10
+ bl_0_10 br_0_10 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c10
+ bl_0_10 br_0_10 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c10
+ bl_0_10 br_0_10 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c10
+ bl_0_10 br_0_10 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c10
+ bl_0_10 br_0_10 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c10
+ bl_0_10 br_0_10 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c10
+ bl_0_10 br_0_10 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c10
+ bl_0_10 br_0_10 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c10
+ bl_0_10 br_0_10 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c10
+ bl_0_10 br_0_10 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c10
+ bl_0_10 br_0_10 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c10
+ bl_0_10 br_0_10 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c10
+ bl_0_10 br_0_10 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c10
+ bl_0_10 br_0_10 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c10
+ bl_0_10 br_0_10 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c10
+ bl_0_10 br_0_10 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c10
+ bl_0_10 br_0_10 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c10
+ bl_0_10 br_0_10 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c10
+ bl_0_10 br_0_10 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c10
+ bl_0_10 br_0_10 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c10
+ bl_0_10 br_0_10 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c10
+ bl_0_10 br_0_10 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c10
+ bl_0_10 br_0_10 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c10
+ bl_0_10 br_0_10 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c10
+ bl_0_10 br_0_10 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c10
+ bl_0_10 br_0_10 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c10
+ bl_0_10 br_0_10 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c10
+ bl_0_10 br_0_10 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c10
+ bl_0_10 br_0_10 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c10
+ bl_0_10 br_0_10 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c10
+ bl_0_10 br_0_10 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c10
+ bl_0_10 br_0_10 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c10
+ bl_0_10 br_0_10 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c10
+ bl_0_10 br_0_10 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c10
+ bl_0_10 br_0_10 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c10
+ bl_0_10 br_0_10 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c10
+ bl_0_10 br_0_10 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c10
+ bl_0_10 br_0_10 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c10
+ bl_0_10 br_0_10 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c10
+ bl_0_10 br_0_10 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c10
+ bl_0_10 br_0_10 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c10
+ bl_0_10 br_0_10 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c10
+ bl_0_10 br_0_10 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c10
+ bl_0_10 br_0_10 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c10
+ bl_0_10 br_0_10 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c10
+ bl_0_10 br_0_10 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c10
+ bl_0_10 br_0_10 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c10
+ bl_0_10 br_0_10 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c10
+ bl_0_10 br_0_10 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c10
+ bl_0_10 br_0_10 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c10
+ bl_0_10 br_0_10 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c10
+ bl_0_10 br_0_10 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c10
+ bl_0_10 br_0_10 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c10
+ bl_0_10 br_0_10 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c10
+ bl_0_10 br_0_10 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c10
+ bl_0_10 br_0_10 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c10
+ bl_0_10 br_0_10 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c10
+ bl_0_10 br_0_10 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c10
+ bl_0_10 br_0_10 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c10
+ bl_0_10 br_0_10 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c10
+ bl_0_10 br_0_10 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c10
+ bl_0_10 br_0_10 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c10
+ bl_0_10 br_0_10 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c10
+ bl_0_10 br_0_10 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c10
+ bl_0_10 br_0_10 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c10
+ bl_0_10 br_0_10 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c10
+ bl_0_10 br_0_10 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c10
+ bl_0_10 br_0_10 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c10
+ bl_0_10 br_0_10 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c10
+ bl_0_10 br_0_10 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c10
+ bl_0_10 br_0_10 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c11
+ bl_0_11 br_0_11 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c11
+ bl_0_11 br_0_11 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c11
+ bl_0_11 br_0_11 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c11
+ bl_0_11 br_0_11 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c11
+ bl_0_11 br_0_11 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c11
+ bl_0_11 br_0_11 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c11
+ bl_0_11 br_0_11 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c11
+ bl_0_11 br_0_11 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c11
+ bl_0_11 br_0_11 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c11
+ bl_0_11 br_0_11 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c11
+ bl_0_11 br_0_11 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c11
+ bl_0_11 br_0_11 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c11
+ bl_0_11 br_0_11 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c11
+ bl_0_11 br_0_11 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c11
+ bl_0_11 br_0_11 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c11
+ bl_0_11 br_0_11 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c11
+ bl_0_11 br_0_11 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c11
+ bl_0_11 br_0_11 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c11
+ bl_0_11 br_0_11 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c11
+ bl_0_11 br_0_11 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c11
+ bl_0_11 br_0_11 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c11
+ bl_0_11 br_0_11 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c11
+ bl_0_11 br_0_11 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c11
+ bl_0_11 br_0_11 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c11
+ bl_0_11 br_0_11 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c11
+ bl_0_11 br_0_11 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c11
+ bl_0_11 br_0_11 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c11
+ bl_0_11 br_0_11 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c11
+ bl_0_11 br_0_11 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c11
+ bl_0_11 br_0_11 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c11
+ bl_0_11 br_0_11 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c11
+ bl_0_11 br_0_11 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c11
+ bl_0_11 br_0_11 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c11
+ bl_0_11 br_0_11 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c11
+ bl_0_11 br_0_11 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c11
+ bl_0_11 br_0_11 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c11
+ bl_0_11 br_0_11 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c11
+ bl_0_11 br_0_11 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c11
+ bl_0_11 br_0_11 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c11
+ bl_0_11 br_0_11 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c11
+ bl_0_11 br_0_11 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c11
+ bl_0_11 br_0_11 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c11
+ bl_0_11 br_0_11 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c11
+ bl_0_11 br_0_11 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c11
+ bl_0_11 br_0_11 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c11
+ bl_0_11 br_0_11 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c11
+ bl_0_11 br_0_11 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c11
+ bl_0_11 br_0_11 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c11
+ bl_0_11 br_0_11 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c11
+ bl_0_11 br_0_11 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c11
+ bl_0_11 br_0_11 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c11
+ bl_0_11 br_0_11 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c11
+ bl_0_11 br_0_11 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c11
+ bl_0_11 br_0_11 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c11
+ bl_0_11 br_0_11 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c11
+ bl_0_11 br_0_11 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c11
+ bl_0_11 br_0_11 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c11
+ bl_0_11 br_0_11 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c11
+ bl_0_11 br_0_11 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c11
+ bl_0_11 br_0_11 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c11
+ bl_0_11 br_0_11 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c11
+ bl_0_11 br_0_11 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c11
+ bl_0_11 br_0_11 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c11
+ bl_0_11 br_0_11 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c11
+ bl_0_11 br_0_11 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c11
+ bl_0_11 br_0_11 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c11
+ bl_0_11 br_0_11 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c11
+ bl_0_11 br_0_11 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c11
+ bl_0_11 br_0_11 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c11
+ bl_0_11 br_0_11 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c11
+ bl_0_11 br_0_11 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c11
+ bl_0_11 br_0_11 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c11
+ bl_0_11 br_0_11 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c11
+ bl_0_11 br_0_11 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c11
+ bl_0_11 br_0_11 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c11
+ bl_0_11 br_0_11 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c11
+ bl_0_11 br_0_11 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c11
+ bl_0_11 br_0_11 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c11
+ bl_0_11 br_0_11 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c11
+ bl_0_11 br_0_11 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c11
+ bl_0_11 br_0_11 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c11
+ bl_0_11 br_0_11 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c11
+ bl_0_11 br_0_11 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c11
+ bl_0_11 br_0_11 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c11
+ bl_0_11 br_0_11 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c11
+ bl_0_11 br_0_11 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c11
+ bl_0_11 br_0_11 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c11
+ bl_0_11 br_0_11 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c11
+ bl_0_11 br_0_11 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c11
+ bl_0_11 br_0_11 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c11
+ bl_0_11 br_0_11 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c11
+ bl_0_11 br_0_11 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c11
+ bl_0_11 br_0_11 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c11
+ bl_0_11 br_0_11 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c11
+ bl_0_11 br_0_11 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c11
+ bl_0_11 br_0_11 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c11
+ bl_0_11 br_0_11 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c11
+ bl_0_11 br_0_11 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c11
+ bl_0_11 br_0_11 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c11
+ bl_0_11 br_0_11 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c11
+ bl_0_11 br_0_11 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c11
+ bl_0_11 br_0_11 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c11
+ bl_0_11 br_0_11 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c11
+ bl_0_11 br_0_11 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c11
+ bl_0_11 br_0_11 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c11
+ bl_0_11 br_0_11 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c11
+ bl_0_11 br_0_11 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c11
+ bl_0_11 br_0_11 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c11
+ bl_0_11 br_0_11 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c11
+ bl_0_11 br_0_11 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c11
+ bl_0_11 br_0_11 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c11
+ bl_0_11 br_0_11 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c11
+ bl_0_11 br_0_11 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c11
+ bl_0_11 br_0_11 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c11
+ bl_0_11 br_0_11 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c11
+ bl_0_11 br_0_11 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c11
+ bl_0_11 br_0_11 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c11
+ bl_0_11 br_0_11 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c11
+ bl_0_11 br_0_11 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c11
+ bl_0_11 br_0_11 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c11
+ bl_0_11 br_0_11 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c11
+ bl_0_11 br_0_11 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c11
+ bl_0_11 br_0_11 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c11
+ bl_0_11 br_0_11 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c11
+ bl_0_11 br_0_11 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c11
+ bl_0_11 br_0_11 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c11
+ bl_0_11 br_0_11 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c11
+ bl_0_11 br_0_11 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c11
+ bl_0_11 br_0_11 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c11
+ bl_0_11 br_0_11 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c11
+ bl_0_11 br_0_11 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c11
+ bl_0_11 br_0_11 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c11
+ bl_0_11 br_0_11 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c11
+ bl_0_11 br_0_11 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c11
+ bl_0_11 br_0_11 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c11
+ bl_0_11 br_0_11 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c11
+ bl_0_11 br_0_11 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c11
+ bl_0_11 br_0_11 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c11
+ bl_0_11 br_0_11 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c11
+ bl_0_11 br_0_11 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c11
+ bl_0_11 br_0_11 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c11
+ bl_0_11 br_0_11 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c11
+ bl_0_11 br_0_11 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c11
+ bl_0_11 br_0_11 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c11
+ bl_0_11 br_0_11 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c11
+ bl_0_11 br_0_11 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c11
+ bl_0_11 br_0_11 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c11
+ bl_0_11 br_0_11 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c11
+ bl_0_11 br_0_11 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c11
+ bl_0_11 br_0_11 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c11
+ bl_0_11 br_0_11 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c11
+ bl_0_11 br_0_11 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c11
+ bl_0_11 br_0_11 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c11
+ bl_0_11 br_0_11 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c11
+ bl_0_11 br_0_11 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c11
+ bl_0_11 br_0_11 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c11
+ bl_0_11 br_0_11 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c11
+ bl_0_11 br_0_11 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c11
+ bl_0_11 br_0_11 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c11
+ bl_0_11 br_0_11 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c11
+ bl_0_11 br_0_11 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c11
+ bl_0_11 br_0_11 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c11
+ bl_0_11 br_0_11 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c11
+ bl_0_11 br_0_11 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c11
+ bl_0_11 br_0_11 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c11
+ bl_0_11 br_0_11 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c11
+ bl_0_11 br_0_11 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c11
+ bl_0_11 br_0_11 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c11
+ bl_0_11 br_0_11 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c11
+ bl_0_11 br_0_11 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c11
+ bl_0_11 br_0_11 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c11
+ bl_0_11 br_0_11 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c11
+ bl_0_11 br_0_11 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c11
+ bl_0_11 br_0_11 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c11
+ bl_0_11 br_0_11 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c11
+ bl_0_11 br_0_11 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c11
+ bl_0_11 br_0_11 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c11
+ bl_0_11 br_0_11 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c11
+ bl_0_11 br_0_11 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c11
+ bl_0_11 br_0_11 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c11
+ bl_0_11 br_0_11 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c11
+ bl_0_11 br_0_11 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c11
+ bl_0_11 br_0_11 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c11
+ bl_0_11 br_0_11 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c11
+ bl_0_11 br_0_11 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c11
+ bl_0_11 br_0_11 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c11
+ bl_0_11 br_0_11 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c11
+ bl_0_11 br_0_11 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c11
+ bl_0_11 br_0_11 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c11
+ bl_0_11 br_0_11 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c11
+ bl_0_11 br_0_11 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c11
+ bl_0_11 br_0_11 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c11
+ bl_0_11 br_0_11 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c11
+ bl_0_11 br_0_11 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c11
+ bl_0_11 br_0_11 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c11
+ bl_0_11 br_0_11 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c11
+ bl_0_11 br_0_11 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c11
+ bl_0_11 br_0_11 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c11
+ bl_0_11 br_0_11 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c11
+ bl_0_11 br_0_11 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c11
+ bl_0_11 br_0_11 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c11
+ bl_0_11 br_0_11 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c11
+ bl_0_11 br_0_11 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c11
+ bl_0_11 br_0_11 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c11
+ bl_0_11 br_0_11 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c11
+ bl_0_11 br_0_11 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c11
+ bl_0_11 br_0_11 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c11
+ bl_0_11 br_0_11 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c11
+ bl_0_11 br_0_11 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c11
+ bl_0_11 br_0_11 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c11
+ bl_0_11 br_0_11 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c11
+ bl_0_11 br_0_11 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c11
+ bl_0_11 br_0_11 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c11
+ bl_0_11 br_0_11 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c11
+ bl_0_11 br_0_11 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c11
+ bl_0_11 br_0_11 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c11
+ bl_0_11 br_0_11 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c11
+ bl_0_11 br_0_11 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c11
+ bl_0_11 br_0_11 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c11
+ bl_0_11 br_0_11 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c11
+ bl_0_11 br_0_11 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c11
+ bl_0_11 br_0_11 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c11
+ bl_0_11 br_0_11 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c11
+ bl_0_11 br_0_11 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c11
+ bl_0_11 br_0_11 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c11
+ bl_0_11 br_0_11 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c11
+ bl_0_11 br_0_11 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c11
+ bl_0_11 br_0_11 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c11
+ bl_0_11 br_0_11 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c11
+ bl_0_11 br_0_11 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c11
+ bl_0_11 br_0_11 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c11
+ bl_0_11 br_0_11 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c11
+ bl_0_11 br_0_11 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c11
+ bl_0_11 br_0_11 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c11
+ bl_0_11 br_0_11 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c11
+ bl_0_11 br_0_11 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c11
+ bl_0_11 br_0_11 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c11
+ bl_0_11 br_0_11 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c11
+ bl_0_11 br_0_11 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c11
+ bl_0_11 br_0_11 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c11
+ bl_0_11 br_0_11 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c11
+ bl_0_11 br_0_11 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c11
+ bl_0_11 br_0_11 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c11
+ bl_0_11 br_0_11 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c11
+ bl_0_11 br_0_11 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c11
+ bl_0_11 br_0_11 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c11
+ bl_0_11 br_0_11 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c11
+ bl_0_11 br_0_11 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c11
+ bl_0_11 br_0_11 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c11
+ bl_0_11 br_0_11 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c11
+ bl_0_11 br_0_11 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c11
+ bl_0_11 br_0_11 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c11
+ bl_0_11 br_0_11 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c11
+ bl_0_11 br_0_11 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c11
+ bl_0_11 br_0_11 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c11
+ bl_0_11 br_0_11 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c12
+ bl_0_12 br_0_12 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c12
+ bl_0_12 br_0_12 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c12
+ bl_0_12 br_0_12 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c12
+ bl_0_12 br_0_12 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c12
+ bl_0_12 br_0_12 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c12
+ bl_0_12 br_0_12 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c12
+ bl_0_12 br_0_12 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c12
+ bl_0_12 br_0_12 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c12
+ bl_0_12 br_0_12 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c12
+ bl_0_12 br_0_12 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c12
+ bl_0_12 br_0_12 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c12
+ bl_0_12 br_0_12 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c12
+ bl_0_12 br_0_12 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c12
+ bl_0_12 br_0_12 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c12
+ bl_0_12 br_0_12 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c12
+ bl_0_12 br_0_12 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c12
+ bl_0_12 br_0_12 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c12
+ bl_0_12 br_0_12 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c12
+ bl_0_12 br_0_12 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c12
+ bl_0_12 br_0_12 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c12
+ bl_0_12 br_0_12 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c12
+ bl_0_12 br_0_12 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c12
+ bl_0_12 br_0_12 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c12
+ bl_0_12 br_0_12 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c12
+ bl_0_12 br_0_12 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c12
+ bl_0_12 br_0_12 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c12
+ bl_0_12 br_0_12 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c12
+ bl_0_12 br_0_12 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c12
+ bl_0_12 br_0_12 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c12
+ bl_0_12 br_0_12 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c12
+ bl_0_12 br_0_12 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c12
+ bl_0_12 br_0_12 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c12
+ bl_0_12 br_0_12 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c12
+ bl_0_12 br_0_12 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c12
+ bl_0_12 br_0_12 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c12
+ bl_0_12 br_0_12 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c12
+ bl_0_12 br_0_12 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c12
+ bl_0_12 br_0_12 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c12
+ bl_0_12 br_0_12 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c12
+ bl_0_12 br_0_12 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c12
+ bl_0_12 br_0_12 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c12
+ bl_0_12 br_0_12 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c12
+ bl_0_12 br_0_12 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c12
+ bl_0_12 br_0_12 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c12
+ bl_0_12 br_0_12 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c12
+ bl_0_12 br_0_12 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c12
+ bl_0_12 br_0_12 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c12
+ bl_0_12 br_0_12 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c12
+ bl_0_12 br_0_12 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c12
+ bl_0_12 br_0_12 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c12
+ bl_0_12 br_0_12 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c12
+ bl_0_12 br_0_12 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c12
+ bl_0_12 br_0_12 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c12
+ bl_0_12 br_0_12 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c12
+ bl_0_12 br_0_12 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c12
+ bl_0_12 br_0_12 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c12
+ bl_0_12 br_0_12 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c12
+ bl_0_12 br_0_12 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c12
+ bl_0_12 br_0_12 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c12
+ bl_0_12 br_0_12 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c12
+ bl_0_12 br_0_12 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c12
+ bl_0_12 br_0_12 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c12
+ bl_0_12 br_0_12 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c12
+ bl_0_12 br_0_12 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c12
+ bl_0_12 br_0_12 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c12
+ bl_0_12 br_0_12 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c12
+ bl_0_12 br_0_12 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c12
+ bl_0_12 br_0_12 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c12
+ bl_0_12 br_0_12 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c12
+ bl_0_12 br_0_12 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c12
+ bl_0_12 br_0_12 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c12
+ bl_0_12 br_0_12 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c12
+ bl_0_12 br_0_12 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c12
+ bl_0_12 br_0_12 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c12
+ bl_0_12 br_0_12 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c12
+ bl_0_12 br_0_12 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c12
+ bl_0_12 br_0_12 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c12
+ bl_0_12 br_0_12 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c12
+ bl_0_12 br_0_12 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c12
+ bl_0_12 br_0_12 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c12
+ bl_0_12 br_0_12 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c12
+ bl_0_12 br_0_12 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c12
+ bl_0_12 br_0_12 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c12
+ bl_0_12 br_0_12 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c12
+ bl_0_12 br_0_12 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c12
+ bl_0_12 br_0_12 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c12
+ bl_0_12 br_0_12 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c12
+ bl_0_12 br_0_12 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c12
+ bl_0_12 br_0_12 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c12
+ bl_0_12 br_0_12 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c12
+ bl_0_12 br_0_12 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c12
+ bl_0_12 br_0_12 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c12
+ bl_0_12 br_0_12 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c12
+ bl_0_12 br_0_12 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c12
+ bl_0_12 br_0_12 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c12
+ bl_0_12 br_0_12 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c12
+ bl_0_12 br_0_12 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c12
+ bl_0_12 br_0_12 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c12
+ bl_0_12 br_0_12 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c12
+ bl_0_12 br_0_12 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c12
+ bl_0_12 br_0_12 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c12
+ bl_0_12 br_0_12 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c12
+ bl_0_12 br_0_12 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c12
+ bl_0_12 br_0_12 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c12
+ bl_0_12 br_0_12 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c12
+ bl_0_12 br_0_12 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c12
+ bl_0_12 br_0_12 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c12
+ bl_0_12 br_0_12 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c12
+ bl_0_12 br_0_12 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c12
+ bl_0_12 br_0_12 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c12
+ bl_0_12 br_0_12 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c12
+ bl_0_12 br_0_12 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c12
+ bl_0_12 br_0_12 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c12
+ bl_0_12 br_0_12 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c12
+ bl_0_12 br_0_12 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c12
+ bl_0_12 br_0_12 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c12
+ bl_0_12 br_0_12 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c12
+ bl_0_12 br_0_12 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c12
+ bl_0_12 br_0_12 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c12
+ bl_0_12 br_0_12 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c12
+ bl_0_12 br_0_12 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c12
+ bl_0_12 br_0_12 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c12
+ bl_0_12 br_0_12 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c12
+ bl_0_12 br_0_12 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c12
+ bl_0_12 br_0_12 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c12
+ bl_0_12 br_0_12 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c12
+ bl_0_12 br_0_12 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c12
+ bl_0_12 br_0_12 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c12
+ bl_0_12 br_0_12 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c12
+ bl_0_12 br_0_12 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c12
+ bl_0_12 br_0_12 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c12
+ bl_0_12 br_0_12 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c12
+ bl_0_12 br_0_12 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c12
+ bl_0_12 br_0_12 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c12
+ bl_0_12 br_0_12 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c12
+ bl_0_12 br_0_12 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c12
+ bl_0_12 br_0_12 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c12
+ bl_0_12 br_0_12 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c12
+ bl_0_12 br_0_12 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c12
+ bl_0_12 br_0_12 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c12
+ bl_0_12 br_0_12 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c12
+ bl_0_12 br_0_12 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c12
+ bl_0_12 br_0_12 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c12
+ bl_0_12 br_0_12 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c12
+ bl_0_12 br_0_12 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c12
+ bl_0_12 br_0_12 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c12
+ bl_0_12 br_0_12 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c12
+ bl_0_12 br_0_12 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c12
+ bl_0_12 br_0_12 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c12
+ bl_0_12 br_0_12 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c12
+ bl_0_12 br_0_12 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c12
+ bl_0_12 br_0_12 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c12
+ bl_0_12 br_0_12 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c12
+ bl_0_12 br_0_12 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c12
+ bl_0_12 br_0_12 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c12
+ bl_0_12 br_0_12 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c12
+ bl_0_12 br_0_12 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c12
+ bl_0_12 br_0_12 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c12
+ bl_0_12 br_0_12 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c12
+ bl_0_12 br_0_12 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c12
+ bl_0_12 br_0_12 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c12
+ bl_0_12 br_0_12 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c12
+ bl_0_12 br_0_12 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c12
+ bl_0_12 br_0_12 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c12
+ bl_0_12 br_0_12 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c12
+ bl_0_12 br_0_12 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c12
+ bl_0_12 br_0_12 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c12
+ bl_0_12 br_0_12 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c12
+ bl_0_12 br_0_12 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c12
+ bl_0_12 br_0_12 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c12
+ bl_0_12 br_0_12 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c12
+ bl_0_12 br_0_12 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c12
+ bl_0_12 br_0_12 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c12
+ bl_0_12 br_0_12 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c12
+ bl_0_12 br_0_12 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c12
+ bl_0_12 br_0_12 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c12
+ bl_0_12 br_0_12 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c12
+ bl_0_12 br_0_12 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c12
+ bl_0_12 br_0_12 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c12
+ bl_0_12 br_0_12 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c12
+ bl_0_12 br_0_12 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c12
+ bl_0_12 br_0_12 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c12
+ bl_0_12 br_0_12 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c12
+ bl_0_12 br_0_12 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c12
+ bl_0_12 br_0_12 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c12
+ bl_0_12 br_0_12 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c12
+ bl_0_12 br_0_12 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c12
+ bl_0_12 br_0_12 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c12
+ bl_0_12 br_0_12 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c12
+ bl_0_12 br_0_12 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c12
+ bl_0_12 br_0_12 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c12
+ bl_0_12 br_0_12 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c12
+ bl_0_12 br_0_12 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c12
+ bl_0_12 br_0_12 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c12
+ bl_0_12 br_0_12 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c12
+ bl_0_12 br_0_12 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c12
+ bl_0_12 br_0_12 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c12
+ bl_0_12 br_0_12 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c12
+ bl_0_12 br_0_12 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c12
+ bl_0_12 br_0_12 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c12
+ bl_0_12 br_0_12 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c12
+ bl_0_12 br_0_12 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c12
+ bl_0_12 br_0_12 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c12
+ bl_0_12 br_0_12 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c12
+ bl_0_12 br_0_12 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c12
+ bl_0_12 br_0_12 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c12
+ bl_0_12 br_0_12 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c12
+ bl_0_12 br_0_12 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c12
+ bl_0_12 br_0_12 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c12
+ bl_0_12 br_0_12 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c12
+ bl_0_12 br_0_12 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c12
+ bl_0_12 br_0_12 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c12
+ bl_0_12 br_0_12 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c12
+ bl_0_12 br_0_12 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c12
+ bl_0_12 br_0_12 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c12
+ bl_0_12 br_0_12 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c12
+ bl_0_12 br_0_12 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c12
+ bl_0_12 br_0_12 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c12
+ bl_0_12 br_0_12 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c12
+ bl_0_12 br_0_12 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c12
+ bl_0_12 br_0_12 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c12
+ bl_0_12 br_0_12 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c12
+ bl_0_12 br_0_12 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c12
+ bl_0_12 br_0_12 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c12
+ bl_0_12 br_0_12 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c12
+ bl_0_12 br_0_12 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c12
+ bl_0_12 br_0_12 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c12
+ bl_0_12 br_0_12 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c12
+ bl_0_12 br_0_12 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c12
+ bl_0_12 br_0_12 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c12
+ bl_0_12 br_0_12 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c12
+ bl_0_12 br_0_12 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c12
+ bl_0_12 br_0_12 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c12
+ bl_0_12 br_0_12 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c12
+ bl_0_12 br_0_12 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c12
+ bl_0_12 br_0_12 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c12
+ bl_0_12 br_0_12 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c12
+ bl_0_12 br_0_12 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c12
+ bl_0_12 br_0_12 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c12
+ bl_0_12 br_0_12 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c12
+ bl_0_12 br_0_12 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c12
+ bl_0_12 br_0_12 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c12
+ bl_0_12 br_0_12 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c12
+ bl_0_12 br_0_12 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c12
+ bl_0_12 br_0_12 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c12
+ bl_0_12 br_0_12 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c12
+ bl_0_12 br_0_12 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c12
+ bl_0_12 br_0_12 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c12
+ bl_0_12 br_0_12 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c12
+ bl_0_12 br_0_12 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c12
+ bl_0_12 br_0_12 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c12
+ bl_0_12 br_0_12 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c12
+ bl_0_12 br_0_12 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c12
+ bl_0_12 br_0_12 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c12
+ bl_0_12 br_0_12 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c12
+ bl_0_12 br_0_12 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c13
+ bl_0_13 br_0_13 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c13
+ bl_0_13 br_0_13 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c13
+ bl_0_13 br_0_13 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c13
+ bl_0_13 br_0_13 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c13
+ bl_0_13 br_0_13 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c13
+ bl_0_13 br_0_13 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c13
+ bl_0_13 br_0_13 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c13
+ bl_0_13 br_0_13 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c13
+ bl_0_13 br_0_13 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c13
+ bl_0_13 br_0_13 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c13
+ bl_0_13 br_0_13 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c13
+ bl_0_13 br_0_13 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c13
+ bl_0_13 br_0_13 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c13
+ bl_0_13 br_0_13 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c13
+ bl_0_13 br_0_13 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c13
+ bl_0_13 br_0_13 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c13
+ bl_0_13 br_0_13 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c13
+ bl_0_13 br_0_13 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c13
+ bl_0_13 br_0_13 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c13
+ bl_0_13 br_0_13 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c13
+ bl_0_13 br_0_13 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c13
+ bl_0_13 br_0_13 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c13
+ bl_0_13 br_0_13 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c13
+ bl_0_13 br_0_13 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c13
+ bl_0_13 br_0_13 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c13
+ bl_0_13 br_0_13 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c13
+ bl_0_13 br_0_13 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c13
+ bl_0_13 br_0_13 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c13
+ bl_0_13 br_0_13 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c13
+ bl_0_13 br_0_13 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c13
+ bl_0_13 br_0_13 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c13
+ bl_0_13 br_0_13 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c13
+ bl_0_13 br_0_13 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c13
+ bl_0_13 br_0_13 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c13
+ bl_0_13 br_0_13 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c13
+ bl_0_13 br_0_13 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c13
+ bl_0_13 br_0_13 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c13
+ bl_0_13 br_0_13 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c13
+ bl_0_13 br_0_13 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c13
+ bl_0_13 br_0_13 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c13
+ bl_0_13 br_0_13 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c13
+ bl_0_13 br_0_13 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c13
+ bl_0_13 br_0_13 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c13
+ bl_0_13 br_0_13 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c13
+ bl_0_13 br_0_13 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c13
+ bl_0_13 br_0_13 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c13
+ bl_0_13 br_0_13 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c13
+ bl_0_13 br_0_13 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c13
+ bl_0_13 br_0_13 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c13
+ bl_0_13 br_0_13 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c13
+ bl_0_13 br_0_13 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c13
+ bl_0_13 br_0_13 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c13
+ bl_0_13 br_0_13 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c13
+ bl_0_13 br_0_13 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c13
+ bl_0_13 br_0_13 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c13
+ bl_0_13 br_0_13 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c13
+ bl_0_13 br_0_13 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c13
+ bl_0_13 br_0_13 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c13
+ bl_0_13 br_0_13 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c13
+ bl_0_13 br_0_13 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c13
+ bl_0_13 br_0_13 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c13
+ bl_0_13 br_0_13 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c13
+ bl_0_13 br_0_13 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c13
+ bl_0_13 br_0_13 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c13
+ bl_0_13 br_0_13 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c13
+ bl_0_13 br_0_13 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c13
+ bl_0_13 br_0_13 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c13
+ bl_0_13 br_0_13 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c13
+ bl_0_13 br_0_13 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c13
+ bl_0_13 br_0_13 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c13
+ bl_0_13 br_0_13 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c13
+ bl_0_13 br_0_13 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c13
+ bl_0_13 br_0_13 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c13
+ bl_0_13 br_0_13 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c13
+ bl_0_13 br_0_13 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c13
+ bl_0_13 br_0_13 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c13
+ bl_0_13 br_0_13 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c13
+ bl_0_13 br_0_13 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c13
+ bl_0_13 br_0_13 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c13
+ bl_0_13 br_0_13 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c13
+ bl_0_13 br_0_13 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c13
+ bl_0_13 br_0_13 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c13
+ bl_0_13 br_0_13 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c13
+ bl_0_13 br_0_13 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c13
+ bl_0_13 br_0_13 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c13
+ bl_0_13 br_0_13 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c13
+ bl_0_13 br_0_13 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c13
+ bl_0_13 br_0_13 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c13
+ bl_0_13 br_0_13 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c13
+ bl_0_13 br_0_13 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c13
+ bl_0_13 br_0_13 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c13
+ bl_0_13 br_0_13 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c13
+ bl_0_13 br_0_13 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c13
+ bl_0_13 br_0_13 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c13
+ bl_0_13 br_0_13 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c13
+ bl_0_13 br_0_13 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c13
+ bl_0_13 br_0_13 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c13
+ bl_0_13 br_0_13 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c13
+ bl_0_13 br_0_13 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c13
+ bl_0_13 br_0_13 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c13
+ bl_0_13 br_0_13 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c13
+ bl_0_13 br_0_13 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c13
+ bl_0_13 br_0_13 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c13
+ bl_0_13 br_0_13 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c13
+ bl_0_13 br_0_13 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c13
+ bl_0_13 br_0_13 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c13
+ bl_0_13 br_0_13 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c13
+ bl_0_13 br_0_13 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c13
+ bl_0_13 br_0_13 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c13
+ bl_0_13 br_0_13 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c13
+ bl_0_13 br_0_13 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c13
+ bl_0_13 br_0_13 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c13
+ bl_0_13 br_0_13 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c13
+ bl_0_13 br_0_13 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c13
+ bl_0_13 br_0_13 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c13
+ bl_0_13 br_0_13 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c13
+ bl_0_13 br_0_13 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c13
+ bl_0_13 br_0_13 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c13
+ bl_0_13 br_0_13 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c13
+ bl_0_13 br_0_13 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c13
+ bl_0_13 br_0_13 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c13
+ bl_0_13 br_0_13 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c13
+ bl_0_13 br_0_13 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c13
+ bl_0_13 br_0_13 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c13
+ bl_0_13 br_0_13 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c13
+ bl_0_13 br_0_13 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c13
+ bl_0_13 br_0_13 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c13
+ bl_0_13 br_0_13 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c13
+ bl_0_13 br_0_13 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c13
+ bl_0_13 br_0_13 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c13
+ bl_0_13 br_0_13 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c13
+ bl_0_13 br_0_13 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c13
+ bl_0_13 br_0_13 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c13
+ bl_0_13 br_0_13 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c13
+ bl_0_13 br_0_13 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c13
+ bl_0_13 br_0_13 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c13
+ bl_0_13 br_0_13 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c13
+ bl_0_13 br_0_13 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c13
+ bl_0_13 br_0_13 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c13
+ bl_0_13 br_0_13 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c13
+ bl_0_13 br_0_13 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c13
+ bl_0_13 br_0_13 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c13
+ bl_0_13 br_0_13 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c13
+ bl_0_13 br_0_13 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c13
+ bl_0_13 br_0_13 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c13
+ bl_0_13 br_0_13 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c13
+ bl_0_13 br_0_13 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c13
+ bl_0_13 br_0_13 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c13
+ bl_0_13 br_0_13 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c13
+ bl_0_13 br_0_13 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c13
+ bl_0_13 br_0_13 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c13
+ bl_0_13 br_0_13 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c13
+ bl_0_13 br_0_13 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c13
+ bl_0_13 br_0_13 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c13
+ bl_0_13 br_0_13 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c13
+ bl_0_13 br_0_13 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c13
+ bl_0_13 br_0_13 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c13
+ bl_0_13 br_0_13 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c13
+ bl_0_13 br_0_13 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c13
+ bl_0_13 br_0_13 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c13
+ bl_0_13 br_0_13 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c13
+ bl_0_13 br_0_13 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c13
+ bl_0_13 br_0_13 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c13
+ bl_0_13 br_0_13 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c13
+ bl_0_13 br_0_13 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c13
+ bl_0_13 br_0_13 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c13
+ bl_0_13 br_0_13 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c13
+ bl_0_13 br_0_13 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c13
+ bl_0_13 br_0_13 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c13
+ bl_0_13 br_0_13 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c13
+ bl_0_13 br_0_13 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c13
+ bl_0_13 br_0_13 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c13
+ bl_0_13 br_0_13 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c13
+ bl_0_13 br_0_13 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c13
+ bl_0_13 br_0_13 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c13
+ bl_0_13 br_0_13 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c13
+ bl_0_13 br_0_13 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c13
+ bl_0_13 br_0_13 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c13
+ bl_0_13 br_0_13 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c13
+ bl_0_13 br_0_13 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c13
+ bl_0_13 br_0_13 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c13
+ bl_0_13 br_0_13 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c13
+ bl_0_13 br_0_13 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c13
+ bl_0_13 br_0_13 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c13
+ bl_0_13 br_0_13 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c13
+ bl_0_13 br_0_13 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c13
+ bl_0_13 br_0_13 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c13
+ bl_0_13 br_0_13 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c13
+ bl_0_13 br_0_13 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c13
+ bl_0_13 br_0_13 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c13
+ bl_0_13 br_0_13 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c13
+ bl_0_13 br_0_13 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c13
+ bl_0_13 br_0_13 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c13
+ bl_0_13 br_0_13 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c13
+ bl_0_13 br_0_13 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c13
+ bl_0_13 br_0_13 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c13
+ bl_0_13 br_0_13 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c13
+ bl_0_13 br_0_13 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c13
+ bl_0_13 br_0_13 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c13
+ bl_0_13 br_0_13 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c13
+ bl_0_13 br_0_13 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c13
+ bl_0_13 br_0_13 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c13
+ bl_0_13 br_0_13 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c13
+ bl_0_13 br_0_13 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c13
+ bl_0_13 br_0_13 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c13
+ bl_0_13 br_0_13 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c13
+ bl_0_13 br_0_13 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c13
+ bl_0_13 br_0_13 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c13
+ bl_0_13 br_0_13 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c13
+ bl_0_13 br_0_13 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c13
+ bl_0_13 br_0_13 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c13
+ bl_0_13 br_0_13 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c13
+ bl_0_13 br_0_13 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c13
+ bl_0_13 br_0_13 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c13
+ bl_0_13 br_0_13 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c13
+ bl_0_13 br_0_13 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c13
+ bl_0_13 br_0_13 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c13
+ bl_0_13 br_0_13 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c13
+ bl_0_13 br_0_13 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c13
+ bl_0_13 br_0_13 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c13
+ bl_0_13 br_0_13 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c13
+ bl_0_13 br_0_13 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c13
+ bl_0_13 br_0_13 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c13
+ bl_0_13 br_0_13 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c13
+ bl_0_13 br_0_13 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c13
+ bl_0_13 br_0_13 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c13
+ bl_0_13 br_0_13 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c13
+ bl_0_13 br_0_13 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c13
+ bl_0_13 br_0_13 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c13
+ bl_0_13 br_0_13 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c13
+ bl_0_13 br_0_13 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c13
+ bl_0_13 br_0_13 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c13
+ bl_0_13 br_0_13 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c13
+ bl_0_13 br_0_13 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c13
+ bl_0_13 br_0_13 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c13
+ bl_0_13 br_0_13 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c13
+ bl_0_13 br_0_13 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c13
+ bl_0_13 br_0_13 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c13
+ bl_0_13 br_0_13 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c13
+ bl_0_13 br_0_13 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c13
+ bl_0_13 br_0_13 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c13
+ bl_0_13 br_0_13 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c13
+ bl_0_13 br_0_13 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c13
+ bl_0_13 br_0_13 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c13
+ bl_0_13 br_0_13 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c13
+ bl_0_13 br_0_13 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c13
+ bl_0_13 br_0_13 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c13
+ bl_0_13 br_0_13 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c13
+ bl_0_13 br_0_13 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c13
+ bl_0_13 br_0_13 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c13
+ bl_0_13 br_0_13 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c13
+ bl_0_13 br_0_13 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c13
+ bl_0_13 br_0_13 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c13
+ bl_0_13 br_0_13 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c13
+ bl_0_13 br_0_13 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c13
+ bl_0_13 br_0_13 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c14
+ bl_0_14 br_0_14 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c14
+ bl_0_14 br_0_14 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c14
+ bl_0_14 br_0_14 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c14
+ bl_0_14 br_0_14 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c14
+ bl_0_14 br_0_14 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c14
+ bl_0_14 br_0_14 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c14
+ bl_0_14 br_0_14 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c14
+ bl_0_14 br_0_14 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c14
+ bl_0_14 br_0_14 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c14
+ bl_0_14 br_0_14 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c14
+ bl_0_14 br_0_14 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c14
+ bl_0_14 br_0_14 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c14
+ bl_0_14 br_0_14 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c14
+ bl_0_14 br_0_14 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c14
+ bl_0_14 br_0_14 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c14
+ bl_0_14 br_0_14 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c14
+ bl_0_14 br_0_14 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c14
+ bl_0_14 br_0_14 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c14
+ bl_0_14 br_0_14 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c14
+ bl_0_14 br_0_14 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c14
+ bl_0_14 br_0_14 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c14
+ bl_0_14 br_0_14 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c14
+ bl_0_14 br_0_14 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c14
+ bl_0_14 br_0_14 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c14
+ bl_0_14 br_0_14 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c14
+ bl_0_14 br_0_14 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c14
+ bl_0_14 br_0_14 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c14
+ bl_0_14 br_0_14 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c14
+ bl_0_14 br_0_14 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c14
+ bl_0_14 br_0_14 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c14
+ bl_0_14 br_0_14 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c14
+ bl_0_14 br_0_14 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c14
+ bl_0_14 br_0_14 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c14
+ bl_0_14 br_0_14 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c14
+ bl_0_14 br_0_14 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c14
+ bl_0_14 br_0_14 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c14
+ bl_0_14 br_0_14 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c14
+ bl_0_14 br_0_14 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c14
+ bl_0_14 br_0_14 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c14
+ bl_0_14 br_0_14 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c14
+ bl_0_14 br_0_14 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c14
+ bl_0_14 br_0_14 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c14
+ bl_0_14 br_0_14 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c14
+ bl_0_14 br_0_14 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c14
+ bl_0_14 br_0_14 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c14
+ bl_0_14 br_0_14 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c14
+ bl_0_14 br_0_14 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c14
+ bl_0_14 br_0_14 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c14
+ bl_0_14 br_0_14 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c14
+ bl_0_14 br_0_14 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c14
+ bl_0_14 br_0_14 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c14
+ bl_0_14 br_0_14 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c14
+ bl_0_14 br_0_14 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c14
+ bl_0_14 br_0_14 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c14
+ bl_0_14 br_0_14 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c14
+ bl_0_14 br_0_14 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c14
+ bl_0_14 br_0_14 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c14
+ bl_0_14 br_0_14 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c14
+ bl_0_14 br_0_14 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c14
+ bl_0_14 br_0_14 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c14
+ bl_0_14 br_0_14 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c14
+ bl_0_14 br_0_14 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c14
+ bl_0_14 br_0_14 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c14
+ bl_0_14 br_0_14 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c14
+ bl_0_14 br_0_14 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c14
+ bl_0_14 br_0_14 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c14
+ bl_0_14 br_0_14 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c14
+ bl_0_14 br_0_14 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c14
+ bl_0_14 br_0_14 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c14
+ bl_0_14 br_0_14 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c14
+ bl_0_14 br_0_14 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c14
+ bl_0_14 br_0_14 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c14
+ bl_0_14 br_0_14 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c14
+ bl_0_14 br_0_14 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c14
+ bl_0_14 br_0_14 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c14
+ bl_0_14 br_0_14 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c14
+ bl_0_14 br_0_14 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c14
+ bl_0_14 br_0_14 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c14
+ bl_0_14 br_0_14 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c14
+ bl_0_14 br_0_14 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c14
+ bl_0_14 br_0_14 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c14
+ bl_0_14 br_0_14 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c14
+ bl_0_14 br_0_14 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c14
+ bl_0_14 br_0_14 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c14
+ bl_0_14 br_0_14 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c14
+ bl_0_14 br_0_14 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c14
+ bl_0_14 br_0_14 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c14
+ bl_0_14 br_0_14 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c14
+ bl_0_14 br_0_14 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c14
+ bl_0_14 br_0_14 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c14
+ bl_0_14 br_0_14 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c14
+ bl_0_14 br_0_14 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c14
+ bl_0_14 br_0_14 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c14
+ bl_0_14 br_0_14 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c14
+ bl_0_14 br_0_14 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c14
+ bl_0_14 br_0_14 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c14
+ bl_0_14 br_0_14 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c14
+ bl_0_14 br_0_14 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c14
+ bl_0_14 br_0_14 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c14
+ bl_0_14 br_0_14 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c14
+ bl_0_14 br_0_14 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c14
+ bl_0_14 br_0_14 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c14
+ bl_0_14 br_0_14 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c14
+ bl_0_14 br_0_14 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c14
+ bl_0_14 br_0_14 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c14
+ bl_0_14 br_0_14 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c14
+ bl_0_14 br_0_14 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c14
+ bl_0_14 br_0_14 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c14
+ bl_0_14 br_0_14 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c14
+ bl_0_14 br_0_14 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c14
+ bl_0_14 br_0_14 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c14
+ bl_0_14 br_0_14 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c14
+ bl_0_14 br_0_14 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c14
+ bl_0_14 br_0_14 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c14
+ bl_0_14 br_0_14 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c14
+ bl_0_14 br_0_14 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c14
+ bl_0_14 br_0_14 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c14
+ bl_0_14 br_0_14 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c14
+ bl_0_14 br_0_14 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c14
+ bl_0_14 br_0_14 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c14
+ bl_0_14 br_0_14 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c14
+ bl_0_14 br_0_14 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c14
+ bl_0_14 br_0_14 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c14
+ bl_0_14 br_0_14 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c14
+ bl_0_14 br_0_14 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c14
+ bl_0_14 br_0_14 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c14
+ bl_0_14 br_0_14 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c14
+ bl_0_14 br_0_14 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c14
+ bl_0_14 br_0_14 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c14
+ bl_0_14 br_0_14 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c14
+ bl_0_14 br_0_14 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c14
+ bl_0_14 br_0_14 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c14
+ bl_0_14 br_0_14 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c14
+ bl_0_14 br_0_14 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c14
+ bl_0_14 br_0_14 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c14
+ bl_0_14 br_0_14 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c14
+ bl_0_14 br_0_14 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c14
+ bl_0_14 br_0_14 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c14
+ bl_0_14 br_0_14 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c14
+ bl_0_14 br_0_14 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c14
+ bl_0_14 br_0_14 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c14
+ bl_0_14 br_0_14 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c14
+ bl_0_14 br_0_14 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c14
+ bl_0_14 br_0_14 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c14
+ bl_0_14 br_0_14 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c14
+ bl_0_14 br_0_14 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c14
+ bl_0_14 br_0_14 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c14
+ bl_0_14 br_0_14 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c14
+ bl_0_14 br_0_14 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c14
+ bl_0_14 br_0_14 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c14
+ bl_0_14 br_0_14 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c14
+ bl_0_14 br_0_14 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c14
+ bl_0_14 br_0_14 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c14
+ bl_0_14 br_0_14 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c14
+ bl_0_14 br_0_14 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c14
+ bl_0_14 br_0_14 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c14
+ bl_0_14 br_0_14 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c14
+ bl_0_14 br_0_14 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c14
+ bl_0_14 br_0_14 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c14
+ bl_0_14 br_0_14 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c14
+ bl_0_14 br_0_14 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c14
+ bl_0_14 br_0_14 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c14
+ bl_0_14 br_0_14 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c14
+ bl_0_14 br_0_14 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c14
+ bl_0_14 br_0_14 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c14
+ bl_0_14 br_0_14 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c14
+ bl_0_14 br_0_14 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c14
+ bl_0_14 br_0_14 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c14
+ bl_0_14 br_0_14 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c14
+ bl_0_14 br_0_14 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c14
+ bl_0_14 br_0_14 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c14
+ bl_0_14 br_0_14 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c14
+ bl_0_14 br_0_14 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c14
+ bl_0_14 br_0_14 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c14
+ bl_0_14 br_0_14 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c14
+ bl_0_14 br_0_14 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c14
+ bl_0_14 br_0_14 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c14
+ bl_0_14 br_0_14 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c14
+ bl_0_14 br_0_14 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c14
+ bl_0_14 br_0_14 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c14
+ bl_0_14 br_0_14 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c14
+ bl_0_14 br_0_14 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c14
+ bl_0_14 br_0_14 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c14
+ bl_0_14 br_0_14 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c14
+ bl_0_14 br_0_14 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c14
+ bl_0_14 br_0_14 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c14
+ bl_0_14 br_0_14 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c14
+ bl_0_14 br_0_14 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c14
+ bl_0_14 br_0_14 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c14
+ bl_0_14 br_0_14 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c14
+ bl_0_14 br_0_14 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c14
+ bl_0_14 br_0_14 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c14
+ bl_0_14 br_0_14 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c14
+ bl_0_14 br_0_14 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c14
+ bl_0_14 br_0_14 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c14
+ bl_0_14 br_0_14 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c14
+ bl_0_14 br_0_14 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c14
+ bl_0_14 br_0_14 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c14
+ bl_0_14 br_0_14 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c14
+ bl_0_14 br_0_14 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c14
+ bl_0_14 br_0_14 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c14
+ bl_0_14 br_0_14 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c14
+ bl_0_14 br_0_14 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c14
+ bl_0_14 br_0_14 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c14
+ bl_0_14 br_0_14 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c14
+ bl_0_14 br_0_14 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c14
+ bl_0_14 br_0_14 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c14
+ bl_0_14 br_0_14 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c14
+ bl_0_14 br_0_14 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c14
+ bl_0_14 br_0_14 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c14
+ bl_0_14 br_0_14 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c14
+ bl_0_14 br_0_14 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c14
+ bl_0_14 br_0_14 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c14
+ bl_0_14 br_0_14 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c14
+ bl_0_14 br_0_14 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c14
+ bl_0_14 br_0_14 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c14
+ bl_0_14 br_0_14 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c14
+ bl_0_14 br_0_14 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c14
+ bl_0_14 br_0_14 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c14
+ bl_0_14 br_0_14 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c14
+ bl_0_14 br_0_14 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c14
+ bl_0_14 br_0_14 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c14
+ bl_0_14 br_0_14 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c14
+ bl_0_14 br_0_14 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c14
+ bl_0_14 br_0_14 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c14
+ bl_0_14 br_0_14 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c14
+ bl_0_14 br_0_14 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c14
+ bl_0_14 br_0_14 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c14
+ bl_0_14 br_0_14 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c14
+ bl_0_14 br_0_14 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c14
+ bl_0_14 br_0_14 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c14
+ bl_0_14 br_0_14 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c14
+ bl_0_14 br_0_14 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c14
+ bl_0_14 br_0_14 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c14
+ bl_0_14 br_0_14 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c14
+ bl_0_14 br_0_14 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c14
+ bl_0_14 br_0_14 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c14
+ bl_0_14 br_0_14 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c14
+ bl_0_14 br_0_14 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c14
+ bl_0_14 br_0_14 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c14
+ bl_0_14 br_0_14 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c14
+ bl_0_14 br_0_14 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c14
+ bl_0_14 br_0_14 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c14
+ bl_0_14 br_0_14 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c14
+ bl_0_14 br_0_14 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c14
+ bl_0_14 br_0_14 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c14
+ bl_0_14 br_0_14 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c14
+ bl_0_14 br_0_14 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c14
+ bl_0_14 br_0_14 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c14
+ bl_0_14 br_0_14 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c14
+ bl_0_14 br_0_14 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c14
+ bl_0_14 br_0_14 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c14
+ bl_0_14 br_0_14 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c14
+ bl_0_14 br_0_14 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c14
+ bl_0_14 br_0_14 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c14
+ bl_0_14 br_0_14 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c15
+ bl_0_15 br_0_15 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c15
+ bl_0_15 br_0_15 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c15
+ bl_0_15 br_0_15 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c15
+ bl_0_15 br_0_15 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c15
+ bl_0_15 br_0_15 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c15
+ bl_0_15 br_0_15 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c15
+ bl_0_15 br_0_15 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c15
+ bl_0_15 br_0_15 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c15
+ bl_0_15 br_0_15 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c15
+ bl_0_15 br_0_15 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c15
+ bl_0_15 br_0_15 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c15
+ bl_0_15 br_0_15 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c15
+ bl_0_15 br_0_15 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c15
+ bl_0_15 br_0_15 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c15
+ bl_0_15 br_0_15 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c15
+ bl_0_15 br_0_15 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c15
+ bl_0_15 br_0_15 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c15
+ bl_0_15 br_0_15 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c15
+ bl_0_15 br_0_15 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c15
+ bl_0_15 br_0_15 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c15
+ bl_0_15 br_0_15 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c15
+ bl_0_15 br_0_15 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c15
+ bl_0_15 br_0_15 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c15
+ bl_0_15 br_0_15 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c15
+ bl_0_15 br_0_15 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c15
+ bl_0_15 br_0_15 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c15
+ bl_0_15 br_0_15 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c15
+ bl_0_15 br_0_15 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c15
+ bl_0_15 br_0_15 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c15
+ bl_0_15 br_0_15 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c15
+ bl_0_15 br_0_15 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c15
+ bl_0_15 br_0_15 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c15
+ bl_0_15 br_0_15 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c15
+ bl_0_15 br_0_15 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c15
+ bl_0_15 br_0_15 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c15
+ bl_0_15 br_0_15 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c15
+ bl_0_15 br_0_15 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c15
+ bl_0_15 br_0_15 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c15
+ bl_0_15 br_0_15 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c15
+ bl_0_15 br_0_15 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c15
+ bl_0_15 br_0_15 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c15
+ bl_0_15 br_0_15 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c15
+ bl_0_15 br_0_15 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c15
+ bl_0_15 br_0_15 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c15
+ bl_0_15 br_0_15 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c15
+ bl_0_15 br_0_15 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c15
+ bl_0_15 br_0_15 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c15
+ bl_0_15 br_0_15 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c15
+ bl_0_15 br_0_15 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c15
+ bl_0_15 br_0_15 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c15
+ bl_0_15 br_0_15 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c15
+ bl_0_15 br_0_15 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c15
+ bl_0_15 br_0_15 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c15
+ bl_0_15 br_0_15 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c15
+ bl_0_15 br_0_15 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c15
+ bl_0_15 br_0_15 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c15
+ bl_0_15 br_0_15 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c15
+ bl_0_15 br_0_15 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c15
+ bl_0_15 br_0_15 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c15
+ bl_0_15 br_0_15 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c15
+ bl_0_15 br_0_15 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c15
+ bl_0_15 br_0_15 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c15
+ bl_0_15 br_0_15 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c15
+ bl_0_15 br_0_15 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c15
+ bl_0_15 br_0_15 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c15
+ bl_0_15 br_0_15 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c15
+ bl_0_15 br_0_15 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c15
+ bl_0_15 br_0_15 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c15
+ bl_0_15 br_0_15 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c15
+ bl_0_15 br_0_15 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c15
+ bl_0_15 br_0_15 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c15
+ bl_0_15 br_0_15 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c15
+ bl_0_15 br_0_15 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c15
+ bl_0_15 br_0_15 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c15
+ bl_0_15 br_0_15 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c15
+ bl_0_15 br_0_15 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c15
+ bl_0_15 br_0_15 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c15
+ bl_0_15 br_0_15 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c15
+ bl_0_15 br_0_15 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c15
+ bl_0_15 br_0_15 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c15
+ bl_0_15 br_0_15 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c15
+ bl_0_15 br_0_15 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c15
+ bl_0_15 br_0_15 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c15
+ bl_0_15 br_0_15 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c15
+ bl_0_15 br_0_15 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c15
+ bl_0_15 br_0_15 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c15
+ bl_0_15 br_0_15 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c15
+ bl_0_15 br_0_15 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c15
+ bl_0_15 br_0_15 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c15
+ bl_0_15 br_0_15 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c15
+ bl_0_15 br_0_15 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c15
+ bl_0_15 br_0_15 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c15
+ bl_0_15 br_0_15 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c15
+ bl_0_15 br_0_15 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c15
+ bl_0_15 br_0_15 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c15
+ bl_0_15 br_0_15 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c15
+ bl_0_15 br_0_15 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c15
+ bl_0_15 br_0_15 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c15
+ bl_0_15 br_0_15 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c15
+ bl_0_15 br_0_15 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c15
+ bl_0_15 br_0_15 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c15
+ bl_0_15 br_0_15 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c15
+ bl_0_15 br_0_15 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c15
+ bl_0_15 br_0_15 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c15
+ bl_0_15 br_0_15 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c15
+ bl_0_15 br_0_15 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c15
+ bl_0_15 br_0_15 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c15
+ bl_0_15 br_0_15 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c15
+ bl_0_15 br_0_15 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c15
+ bl_0_15 br_0_15 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c15
+ bl_0_15 br_0_15 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c15
+ bl_0_15 br_0_15 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c15
+ bl_0_15 br_0_15 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c15
+ bl_0_15 br_0_15 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c15
+ bl_0_15 br_0_15 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c15
+ bl_0_15 br_0_15 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c15
+ bl_0_15 br_0_15 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c15
+ bl_0_15 br_0_15 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c15
+ bl_0_15 br_0_15 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c15
+ bl_0_15 br_0_15 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c15
+ bl_0_15 br_0_15 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c15
+ bl_0_15 br_0_15 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c15
+ bl_0_15 br_0_15 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c15
+ bl_0_15 br_0_15 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c15
+ bl_0_15 br_0_15 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c15
+ bl_0_15 br_0_15 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c15
+ bl_0_15 br_0_15 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c15
+ bl_0_15 br_0_15 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c15
+ bl_0_15 br_0_15 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c15
+ bl_0_15 br_0_15 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c15
+ bl_0_15 br_0_15 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c15
+ bl_0_15 br_0_15 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c15
+ bl_0_15 br_0_15 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c15
+ bl_0_15 br_0_15 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c15
+ bl_0_15 br_0_15 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c15
+ bl_0_15 br_0_15 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c15
+ bl_0_15 br_0_15 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c15
+ bl_0_15 br_0_15 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c15
+ bl_0_15 br_0_15 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c15
+ bl_0_15 br_0_15 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c15
+ bl_0_15 br_0_15 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c15
+ bl_0_15 br_0_15 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c15
+ bl_0_15 br_0_15 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c15
+ bl_0_15 br_0_15 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c15
+ bl_0_15 br_0_15 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c15
+ bl_0_15 br_0_15 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c15
+ bl_0_15 br_0_15 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c15
+ bl_0_15 br_0_15 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c15
+ bl_0_15 br_0_15 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c15
+ bl_0_15 br_0_15 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c15
+ bl_0_15 br_0_15 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c15
+ bl_0_15 br_0_15 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c15
+ bl_0_15 br_0_15 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c15
+ bl_0_15 br_0_15 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c15
+ bl_0_15 br_0_15 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c15
+ bl_0_15 br_0_15 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c15
+ bl_0_15 br_0_15 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c15
+ bl_0_15 br_0_15 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c15
+ bl_0_15 br_0_15 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c15
+ bl_0_15 br_0_15 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c15
+ bl_0_15 br_0_15 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c15
+ bl_0_15 br_0_15 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c15
+ bl_0_15 br_0_15 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c15
+ bl_0_15 br_0_15 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c15
+ bl_0_15 br_0_15 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c15
+ bl_0_15 br_0_15 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c15
+ bl_0_15 br_0_15 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c15
+ bl_0_15 br_0_15 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c15
+ bl_0_15 br_0_15 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c15
+ bl_0_15 br_0_15 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c15
+ bl_0_15 br_0_15 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c15
+ bl_0_15 br_0_15 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c15
+ bl_0_15 br_0_15 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c15
+ bl_0_15 br_0_15 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c15
+ bl_0_15 br_0_15 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c15
+ bl_0_15 br_0_15 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c15
+ bl_0_15 br_0_15 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c15
+ bl_0_15 br_0_15 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c15
+ bl_0_15 br_0_15 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c15
+ bl_0_15 br_0_15 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c15
+ bl_0_15 br_0_15 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c15
+ bl_0_15 br_0_15 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c15
+ bl_0_15 br_0_15 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c15
+ bl_0_15 br_0_15 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c15
+ bl_0_15 br_0_15 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c15
+ bl_0_15 br_0_15 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c15
+ bl_0_15 br_0_15 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c15
+ bl_0_15 br_0_15 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c15
+ bl_0_15 br_0_15 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c15
+ bl_0_15 br_0_15 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c15
+ bl_0_15 br_0_15 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c15
+ bl_0_15 br_0_15 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c15
+ bl_0_15 br_0_15 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c15
+ bl_0_15 br_0_15 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c15
+ bl_0_15 br_0_15 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c15
+ bl_0_15 br_0_15 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c15
+ bl_0_15 br_0_15 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c15
+ bl_0_15 br_0_15 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c15
+ bl_0_15 br_0_15 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c15
+ bl_0_15 br_0_15 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c15
+ bl_0_15 br_0_15 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c15
+ bl_0_15 br_0_15 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c15
+ bl_0_15 br_0_15 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c15
+ bl_0_15 br_0_15 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c15
+ bl_0_15 br_0_15 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c15
+ bl_0_15 br_0_15 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c15
+ bl_0_15 br_0_15 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c15
+ bl_0_15 br_0_15 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c15
+ bl_0_15 br_0_15 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c15
+ bl_0_15 br_0_15 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c15
+ bl_0_15 br_0_15 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c15
+ bl_0_15 br_0_15 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c15
+ bl_0_15 br_0_15 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c15
+ bl_0_15 br_0_15 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c15
+ bl_0_15 br_0_15 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c15
+ bl_0_15 br_0_15 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c15
+ bl_0_15 br_0_15 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c15
+ bl_0_15 br_0_15 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c15
+ bl_0_15 br_0_15 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c15
+ bl_0_15 br_0_15 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c15
+ bl_0_15 br_0_15 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c15
+ bl_0_15 br_0_15 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c15
+ bl_0_15 br_0_15 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c15
+ bl_0_15 br_0_15 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c15
+ bl_0_15 br_0_15 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c15
+ bl_0_15 br_0_15 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c15
+ bl_0_15 br_0_15 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c15
+ bl_0_15 br_0_15 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c15
+ bl_0_15 br_0_15 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c15
+ bl_0_15 br_0_15 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c15
+ bl_0_15 br_0_15 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c15
+ bl_0_15 br_0_15 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c15
+ bl_0_15 br_0_15 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c15
+ bl_0_15 br_0_15 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c15
+ bl_0_15 br_0_15 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c15
+ bl_0_15 br_0_15 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c15
+ bl_0_15 br_0_15 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c15
+ bl_0_15 br_0_15 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c15
+ bl_0_15 br_0_15 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c15
+ bl_0_15 br_0_15 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c15
+ bl_0_15 br_0_15 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c15
+ bl_0_15 br_0_15 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c15
+ bl_0_15 br_0_15 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c15
+ bl_0_15 br_0_15 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c15
+ bl_0_15 br_0_15 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c15
+ bl_0_15 br_0_15 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c15
+ bl_0_15 br_0_15 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c15
+ bl_0_15 br_0_15 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c15
+ bl_0_15 br_0_15 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c15
+ bl_0_15 br_0_15 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c15
+ bl_0_15 br_0_15 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c15
+ bl_0_15 br_0_15 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c15
+ bl_0_15 br_0_15 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c15
+ bl_0_15 br_0_15 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c15
+ bl_0_15 br_0_15 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c15
+ bl_0_15 br_0_15 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c16
+ bl_0_16 br_0_16 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c16
+ bl_0_16 br_0_16 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c16
+ bl_0_16 br_0_16 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c16
+ bl_0_16 br_0_16 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c16
+ bl_0_16 br_0_16 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c16
+ bl_0_16 br_0_16 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c16
+ bl_0_16 br_0_16 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c16
+ bl_0_16 br_0_16 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c16
+ bl_0_16 br_0_16 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c16
+ bl_0_16 br_0_16 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c16
+ bl_0_16 br_0_16 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c16
+ bl_0_16 br_0_16 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c16
+ bl_0_16 br_0_16 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c16
+ bl_0_16 br_0_16 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c16
+ bl_0_16 br_0_16 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c16
+ bl_0_16 br_0_16 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c16
+ bl_0_16 br_0_16 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c16
+ bl_0_16 br_0_16 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c16
+ bl_0_16 br_0_16 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c16
+ bl_0_16 br_0_16 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c16
+ bl_0_16 br_0_16 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c16
+ bl_0_16 br_0_16 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c16
+ bl_0_16 br_0_16 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c16
+ bl_0_16 br_0_16 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c16
+ bl_0_16 br_0_16 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c16
+ bl_0_16 br_0_16 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c16
+ bl_0_16 br_0_16 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c16
+ bl_0_16 br_0_16 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c16
+ bl_0_16 br_0_16 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c16
+ bl_0_16 br_0_16 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c16
+ bl_0_16 br_0_16 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c16
+ bl_0_16 br_0_16 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c16
+ bl_0_16 br_0_16 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c16
+ bl_0_16 br_0_16 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c16
+ bl_0_16 br_0_16 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c16
+ bl_0_16 br_0_16 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c16
+ bl_0_16 br_0_16 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c16
+ bl_0_16 br_0_16 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c16
+ bl_0_16 br_0_16 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c16
+ bl_0_16 br_0_16 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c16
+ bl_0_16 br_0_16 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c16
+ bl_0_16 br_0_16 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c16
+ bl_0_16 br_0_16 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c16
+ bl_0_16 br_0_16 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c16
+ bl_0_16 br_0_16 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c16
+ bl_0_16 br_0_16 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c16
+ bl_0_16 br_0_16 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c16
+ bl_0_16 br_0_16 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c16
+ bl_0_16 br_0_16 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c16
+ bl_0_16 br_0_16 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c16
+ bl_0_16 br_0_16 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c16
+ bl_0_16 br_0_16 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c16
+ bl_0_16 br_0_16 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c16
+ bl_0_16 br_0_16 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c16
+ bl_0_16 br_0_16 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c16
+ bl_0_16 br_0_16 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c16
+ bl_0_16 br_0_16 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c16
+ bl_0_16 br_0_16 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c16
+ bl_0_16 br_0_16 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c16
+ bl_0_16 br_0_16 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c16
+ bl_0_16 br_0_16 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c16
+ bl_0_16 br_0_16 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c16
+ bl_0_16 br_0_16 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c16
+ bl_0_16 br_0_16 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c16
+ bl_0_16 br_0_16 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c16
+ bl_0_16 br_0_16 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c16
+ bl_0_16 br_0_16 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c16
+ bl_0_16 br_0_16 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c16
+ bl_0_16 br_0_16 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c16
+ bl_0_16 br_0_16 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c16
+ bl_0_16 br_0_16 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c16
+ bl_0_16 br_0_16 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c16
+ bl_0_16 br_0_16 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c16
+ bl_0_16 br_0_16 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c16
+ bl_0_16 br_0_16 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c16
+ bl_0_16 br_0_16 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c16
+ bl_0_16 br_0_16 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c16
+ bl_0_16 br_0_16 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c16
+ bl_0_16 br_0_16 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c16
+ bl_0_16 br_0_16 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c16
+ bl_0_16 br_0_16 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c16
+ bl_0_16 br_0_16 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c16
+ bl_0_16 br_0_16 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c16
+ bl_0_16 br_0_16 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c16
+ bl_0_16 br_0_16 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c16
+ bl_0_16 br_0_16 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c16
+ bl_0_16 br_0_16 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c16
+ bl_0_16 br_0_16 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c16
+ bl_0_16 br_0_16 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c16
+ bl_0_16 br_0_16 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c16
+ bl_0_16 br_0_16 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c16
+ bl_0_16 br_0_16 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c16
+ bl_0_16 br_0_16 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c16
+ bl_0_16 br_0_16 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c16
+ bl_0_16 br_0_16 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c16
+ bl_0_16 br_0_16 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c16
+ bl_0_16 br_0_16 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c16
+ bl_0_16 br_0_16 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c16
+ bl_0_16 br_0_16 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c16
+ bl_0_16 br_0_16 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c16
+ bl_0_16 br_0_16 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c16
+ bl_0_16 br_0_16 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c16
+ bl_0_16 br_0_16 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c16
+ bl_0_16 br_0_16 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c16
+ bl_0_16 br_0_16 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c16
+ bl_0_16 br_0_16 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c16
+ bl_0_16 br_0_16 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c16
+ bl_0_16 br_0_16 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c16
+ bl_0_16 br_0_16 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c16
+ bl_0_16 br_0_16 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c16
+ bl_0_16 br_0_16 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c16
+ bl_0_16 br_0_16 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c16
+ bl_0_16 br_0_16 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c16
+ bl_0_16 br_0_16 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c16
+ bl_0_16 br_0_16 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c16
+ bl_0_16 br_0_16 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c16
+ bl_0_16 br_0_16 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c16
+ bl_0_16 br_0_16 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c16
+ bl_0_16 br_0_16 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c16
+ bl_0_16 br_0_16 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c16
+ bl_0_16 br_0_16 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c16
+ bl_0_16 br_0_16 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c16
+ bl_0_16 br_0_16 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c16
+ bl_0_16 br_0_16 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c16
+ bl_0_16 br_0_16 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c16
+ bl_0_16 br_0_16 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c16
+ bl_0_16 br_0_16 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c16
+ bl_0_16 br_0_16 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c16
+ bl_0_16 br_0_16 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c16
+ bl_0_16 br_0_16 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c16
+ bl_0_16 br_0_16 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c16
+ bl_0_16 br_0_16 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c16
+ bl_0_16 br_0_16 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c16
+ bl_0_16 br_0_16 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c16
+ bl_0_16 br_0_16 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c16
+ bl_0_16 br_0_16 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c16
+ bl_0_16 br_0_16 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c16
+ bl_0_16 br_0_16 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c16
+ bl_0_16 br_0_16 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c16
+ bl_0_16 br_0_16 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c16
+ bl_0_16 br_0_16 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c16
+ bl_0_16 br_0_16 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c16
+ bl_0_16 br_0_16 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c16
+ bl_0_16 br_0_16 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c16
+ bl_0_16 br_0_16 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c16
+ bl_0_16 br_0_16 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c16
+ bl_0_16 br_0_16 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c16
+ bl_0_16 br_0_16 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c16
+ bl_0_16 br_0_16 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c16
+ bl_0_16 br_0_16 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c16
+ bl_0_16 br_0_16 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c16
+ bl_0_16 br_0_16 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c16
+ bl_0_16 br_0_16 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c16
+ bl_0_16 br_0_16 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c16
+ bl_0_16 br_0_16 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c16
+ bl_0_16 br_0_16 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c16
+ bl_0_16 br_0_16 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c16
+ bl_0_16 br_0_16 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c16
+ bl_0_16 br_0_16 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c16
+ bl_0_16 br_0_16 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c16
+ bl_0_16 br_0_16 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c16
+ bl_0_16 br_0_16 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c16
+ bl_0_16 br_0_16 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c16
+ bl_0_16 br_0_16 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c16
+ bl_0_16 br_0_16 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c16
+ bl_0_16 br_0_16 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c16
+ bl_0_16 br_0_16 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c16
+ bl_0_16 br_0_16 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c16
+ bl_0_16 br_0_16 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c16
+ bl_0_16 br_0_16 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c16
+ bl_0_16 br_0_16 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c16
+ bl_0_16 br_0_16 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c16
+ bl_0_16 br_0_16 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c16
+ bl_0_16 br_0_16 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c16
+ bl_0_16 br_0_16 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c16
+ bl_0_16 br_0_16 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c16
+ bl_0_16 br_0_16 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c16
+ bl_0_16 br_0_16 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c16
+ bl_0_16 br_0_16 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c16
+ bl_0_16 br_0_16 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c16
+ bl_0_16 br_0_16 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c16
+ bl_0_16 br_0_16 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c16
+ bl_0_16 br_0_16 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c16
+ bl_0_16 br_0_16 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c16
+ bl_0_16 br_0_16 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c16
+ bl_0_16 br_0_16 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c16
+ bl_0_16 br_0_16 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c16
+ bl_0_16 br_0_16 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c16
+ bl_0_16 br_0_16 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c16
+ bl_0_16 br_0_16 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c16
+ bl_0_16 br_0_16 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c16
+ bl_0_16 br_0_16 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c16
+ bl_0_16 br_0_16 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c16
+ bl_0_16 br_0_16 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c16
+ bl_0_16 br_0_16 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c16
+ bl_0_16 br_0_16 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c16
+ bl_0_16 br_0_16 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c16
+ bl_0_16 br_0_16 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c16
+ bl_0_16 br_0_16 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c16
+ bl_0_16 br_0_16 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c16
+ bl_0_16 br_0_16 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c16
+ bl_0_16 br_0_16 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c16
+ bl_0_16 br_0_16 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c16
+ bl_0_16 br_0_16 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c16
+ bl_0_16 br_0_16 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c16
+ bl_0_16 br_0_16 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c16
+ bl_0_16 br_0_16 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c16
+ bl_0_16 br_0_16 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c16
+ bl_0_16 br_0_16 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c16
+ bl_0_16 br_0_16 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c16
+ bl_0_16 br_0_16 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c16
+ bl_0_16 br_0_16 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c16
+ bl_0_16 br_0_16 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c16
+ bl_0_16 br_0_16 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c16
+ bl_0_16 br_0_16 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c16
+ bl_0_16 br_0_16 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c16
+ bl_0_16 br_0_16 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c16
+ bl_0_16 br_0_16 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c16
+ bl_0_16 br_0_16 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c16
+ bl_0_16 br_0_16 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c16
+ bl_0_16 br_0_16 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c16
+ bl_0_16 br_0_16 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c16
+ bl_0_16 br_0_16 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c16
+ bl_0_16 br_0_16 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c16
+ bl_0_16 br_0_16 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c16
+ bl_0_16 br_0_16 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c16
+ bl_0_16 br_0_16 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c16
+ bl_0_16 br_0_16 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c16
+ bl_0_16 br_0_16 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c16
+ bl_0_16 br_0_16 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c16
+ bl_0_16 br_0_16 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c16
+ bl_0_16 br_0_16 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c16
+ bl_0_16 br_0_16 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c16
+ bl_0_16 br_0_16 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c16
+ bl_0_16 br_0_16 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c16
+ bl_0_16 br_0_16 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c16
+ bl_0_16 br_0_16 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c16
+ bl_0_16 br_0_16 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c16
+ bl_0_16 br_0_16 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c16
+ bl_0_16 br_0_16 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c16
+ bl_0_16 br_0_16 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c16
+ bl_0_16 br_0_16 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c16
+ bl_0_16 br_0_16 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c16
+ bl_0_16 br_0_16 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c16
+ bl_0_16 br_0_16 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c16
+ bl_0_16 br_0_16 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c16
+ bl_0_16 br_0_16 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c16
+ bl_0_16 br_0_16 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c16
+ bl_0_16 br_0_16 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c16
+ bl_0_16 br_0_16 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c16
+ bl_0_16 br_0_16 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c16
+ bl_0_16 br_0_16 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c16
+ bl_0_16 br_0_16 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c16
+ bl_0_16 br_0_16 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c16
+ bl_0_16 br_0_16 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c16
+ bl_0_16 br_0_16 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c17
+ bl_0_17 br_0_17 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c17
+ bl_0_17 br_0_17 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c17
+ bl_0_17 br_0_17 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c17
+ bl_0_17 br_0_17 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c17
+ bl_0_17 br_0_17 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c17
+ bl_0_17 br_0_17 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c17
+ bl_0_17 br_0_17 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c17
+ bl_0_17 br_0_17 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c17
+ bl_0_17 br_0_17 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c17
+ bl_0_17 br_0_17 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c17
+ bl_0_17 br_0_17 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c17
+ bl_0_17 br_0_17 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c17
+ bl_0_17 br_0_17 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c17
+ bl_0_17 br_0_17 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c17
+ bl_0_17 br_0_17 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c17
+ bl_0_17 br_0_17 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c17
+ bl_0_17 br_0_17 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c17
+ bl_0_17 br_0_17 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c17
+ bl_0_17 br_0_17 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c17
+ bl_0_17 br_0_17 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c17
+ bl_0_17 br_0_17 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c17
+ bl_0_17 br_0_17 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c17
+ bl_0_17 br_0_17 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c17
+ bl_0_17 br_0_17 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c17
+ bl_0_17 br_0_17 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c17
+ bl_0_17 br_0_17 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c17
+ bl_0_17 br_0_17 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c17
+ bl_0_17 br_0_17 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c17
+ bl_0_17 br_0_17 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c17
+ bl_0_17 br_0_17 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c17
+ bl_0_17 br_0_17 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c17
+ bl_0_17 br_0_17 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c17
+ bl_0_17 br_0_17 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c17
+ bl_0_17 br_0_17 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c17
+ bl_0_17 br_0_17 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c17
+ bl_0_17 br_0_17 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c17
+ bl_0_17 br_0_17 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c17
+ bl_0_17 br_0_17 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c17
+ bl_0_17 br_0_17 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c17
+ bl_0_17 br_0_17 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c17
+ bl_0_17 br_0_17 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c17
+ bl_0_17 br_0_17 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c17
+ bl_0_17 br_0_17 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c17
+ bl_0_17 br_0_17 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c17
+ bl_0_17 br_0_17 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c17
+ bl_0_17 br_0_17 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c17
+ bl_0_17 br_0_17 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c17
+ bl_0_17 br_0_17 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c17
+ bl_0_17 br_0_17 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c17
+ bl_0_17 br_0_17 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c17
+ bl_0_17 br_0_17 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c17
+ bl_0_17 br_0_17 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c17
+ bl_0_17 br_0_17 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c17
+ bl_0_17 br_0_17 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c17
+ bl_0_17 br_0_17 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c17
+ bl_0_17 br_0_17 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c17
+ bl_0_17 br_0_17 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c17
+ bl_0_17 br_0_17 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c17
+ bl_0_17 br_0_17 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c17
+ bl_0_17 br_0_17 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c17
+ bl_0_17 br_0_17 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c17
+ bl_0_17 br_0_17 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c17
+ bl_0_17 br_0_17 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c17
+ bl_0_17 br_0_17 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c17
+ bl_0_17 br_0_17 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c17
+ bl_0_17 br_0_17 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c17
+ bl_0_17 br_0_17 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c17
+ bl_0_17 br_0_17 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c17
+ bl_0_17 br_0_17 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c17
+ bl_0_17 br_0_17 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c17
+ bl_0_17 br_0_17 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c17
+ bl_0_17 br_0_17 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c17
+ bl_0_17 br_0_17 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c17
+ bl_0_17 br_0_17 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c17
+ bl_0_17 br_0_17 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c17
+ bl_0_17 br_0_17 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c17
+ bl_0_17 br_0_17 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c17
+ bl_0_17 br_0_17 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c17
+ bl_0_17 br_0_17 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c17
+ bl_0_17 br_0_17 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c17
+ bl_0_17 br_0_17 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c17
+ bl_0_17 br_0_17 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c17
+ bl_0_17 br_0_17 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c17
+ bl_0_17 br_0_17 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c17
+ bl_0_17 br_0_17 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c17
+ bl_0_17 br_0_17 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c17
+ bl_0_17 br_0_17 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c17
+ bl_0_17 br_0_17 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c17
+ bl_0_17 br_0_17 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c17
+ bl_0_17 br_0_17 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c17
+ bl_0_17 br_0_17 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c17
+ bl_0_17 br_0_17 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c17
+ bl_0_17 br_0_17 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c17
+ bl_0_17 br_0_17 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c17
+ bl_0_17 br_0_17 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c17
+ bl_0_17 br_0_17 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c17
+ bl_0_17 br_0_17 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c17
+ bl_0_17 br_0_17 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c17
+ bl_0_17 br_0_17 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c17
+ bl_0_17 br_0_17 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c17
+ bl_0_17 br_0_17 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c17
+ bl_0_17 br_0_17 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c17
+ bl_0_17 br_0_17 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c17
+ bl_0_17 br_0_17 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c17
+ bl_0_17 br_0_17 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c17
+ bl_0_17 br_0_17 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c17
+ bl_0_17 br_0_17 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c17
+ bl_0_17 br_0_17 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c17
+ bl_0_17 br_0_17 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c17
+ bl_0_17 br_0_17 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c17
+ bl_0_17 br_0_17 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c17
+ bl_0_17 br_0_17 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c17
+ bl_0_17 br_0_17 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c17
+ bl_0_17 br_0_17 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c17
+ bl_0_17 br_0_17 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c17
+ bl_0_17 br_0_17 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c17
+ bl_0_17 br_0_17 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c17
+ bl_0_17 br_0_17 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c17
+ bl_0_17 br_0_17 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c17
+ bl_0_17 br_0_17 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c17
+ bl_0_17 br_0_17 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c17
+ bl_0_17 br_0_17 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c17
+ bl_0_17 br_0_17 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c17
+ bl_0_17 br_0_17 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c17
+ bl_0_17 br_0_17 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c17
+ bl_0_17 br_0_17 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c17
+ bl_0_17 br_0_17 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c17
+ bl_0_17 br_0_17 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c17
+ bl_0_17 br_0_17 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c17
+ bl_0_17 br_0_17 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c17
+ bl_0_17 br_0_17 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c17
+ bl_0_17 br_0_17 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c17
+ bl_0_17 br_0_17 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c17
+ bl_0_17 br_0_17 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c17
+ bl_0_17 br_0_17 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c17
+ bl_0_17 br_0_17 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c17
+ bl_0_17 br_0_17 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c17
+ bl_0_17 br_0_17 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c17
+ bl_0_17 br_0_17 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c17
+ bl_0_17 br_0_17 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c17
+ bl_0_17 br_0_17 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c17
+ bl_0_17 br_0_17 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c17
+ bl_0_17 br_0_17 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c17
+ bl_0_17 br_0_17 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c17
+ bl_0_17 br_0_17 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c17
+ bl_0_17 br_0_17 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c17
+ bl_0_17 br_0_17 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c17
+ bl_0_17 br_0_17 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c17
+ bl_0_17 br_0_17 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c17
+ bl_0_17 br_0_17 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c17
+ bl_0_17 br_0_17 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c17
+ bl_0_17 br_0_17 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c17
+ bl_0_17 br_0_17 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c17
+ bl_0_17 br_0_17 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c17
+ bl_0_17 br_0_17 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c17
+ bl_0_17 br_0_17 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c17
+ bl_0_17 br_0_17 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c17
+ bl_0_17 br_0_17 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c17
+ bl_0_17 br_0_17 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c17
+ bl_0_17 br_0_17 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c17
+ bl_0_17 br_0_17 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c17
+ bl_0_17 br_0_17 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c17
+ bl_0_17 br_0_17 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c17
+ bl_0_17 br_0_17 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c17
+ bl_0_17 br_0_17 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c17
+ bl_0_17 br_0_17 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c17
+ bl_0_17 br_0_17 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c17
+ bl_0_17 br_0_17 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c17
+ bl_0_17 br_0_17 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c17
+ bl_0_17 br_0_17 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c17
+ bl_0_17 br_0_17 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c17
+ bl_0_17 br_0_17 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c17
+ bl_0_17 br_0_17 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c17
+ bl_0_17 br_0_17 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c17
+ bl_0_17 br_0_17 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c17
+ bl_0_17 br_0_17 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c17
+ bl_0_17 br_0_17 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c17
+ bl_0_17 br_0_17 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c17
+ bl_0_17 br_0_17 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c17
+ bl_0_17 br_0_17 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c17
+ bl_0_17 br_0_17 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c17
+ bl_0_17 br_0_17 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c17
+ bl_0_17 br_0_17 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c17
+ bl_0_17 br_0_17 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c17
+ bl_0_17 br_0_17 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c17
+ bl_0_17 br_0_17 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c17
+ bl_0_17 br_0_17 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c17
+ bl_0_17 br_0_17 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c17
+ bl_0_17 br_0_17 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c17
+ bl_0_17 br_0_17 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c17
+ bl_0_17 br_0_17 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c17
+ bl_0_17 br_0_17 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c17
+ bl_0_17 br_0_17 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c17
+ bl_0_17 br_0_17 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c17
+ bl_0_17 br_0_17 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c17
+ bl_0_17 br_0_17 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c17
+ bl_0_17 br_0_17 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c17
+ bl_0_17 br_0_17 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c17
+ bl_0_17 br_0_17 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c17
+ bl_0_17 br_0_17 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c17
+ bl_0_17 br_0_17 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c17
+ bl_0_17 br_0_17 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c17
+ bl_0_17 br_0_17 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c17
+ bl_0_17 br_0_17 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c17
+ bl_0_17 br_0_17 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c17
+ bl_0_17 br_0_17 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c17
+ bl_0_17 br_0_17 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c17
+ bl_0_17 br_0_17 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c17
+ bl_0_17 br_0_17 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c17
+ bl_0_17 br_0_17 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c17
+ bl_0_17 br_0_17 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c17
+ bl_0_17 br_0_17 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c17
+ bl_0_17 br_0_17 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c17
+ bl_0_17 br_0_17 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c17
+ bl_0_17 br_0_17 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c17
+ bl_0_17 br_0_17 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c17
+ bl_0_17 br_0_17 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c17
+ bl_0_17 br_0_17 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c17
+ bl_0_17 br_0_17 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c17
+ bl_0_17 br_0_17 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c17
+ bl_0_17 br_0_17 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c17
+ bl_0_17 br_0_17 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c17
+ bl_0_17 br_0_17 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c17
+ bl_0_17 br_0_17 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c17
+ bl_0_17 br_0_17 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c17
+ bl_0_17 br_0_17 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c17
+ bl_0_17 br_0_17 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c17
+ bl_0_17 br_0_17 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c17
+ bl_0_17 br_0_17 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c17
+ bl_0_17 br_0_17 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c17
+ bl_0_17 br_0_17 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c17
+ bl_0_17 br_0_17 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c17
+ bl_0_17 br_0_17 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c17
+ bl_0_17 br_0_17 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c17
+ bl_0_17 br_0_17 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c17
+ bl_0_17 br_0_17 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c17
+ bl_0_17 br_0_17 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c17
+ bl_0_17 br_0_17 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c17
+ bl_0_17 br_0_17 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c17
+ bl_0_17 br_0_17 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c17
+ bl_0_17 br_0_17 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c17
+ bl_0_17 br_0_17 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c17
+ bl_0_17 br_0_17 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c17
+ bl_0_17 br_0_17 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c17
+ bl_0_17 br_0_17 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c17
+ bl_0_17 br_0_17 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c17
+ bl_0_17 br_0_17 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c17
+ bl_0_17 br_0_17 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c17
+ bl_0_17 br_0_17 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c17
+ bl_0_17 br_0_17 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c17
+ bl_0_17 br_0_17 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c17
+ bl_0_17 br_0_17 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c17
+ bl_0_17 br_0_17 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c17
+ bl_0_17 br_0_17 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c17
+ bl_0_17 br_0_17 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c17
+ bl_0_17 br_0_17 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c18
+ bl_0_18 br_0_18 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c18
+ bl_0_18 br_0_18 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c18
+ bl_0_18 br_0_18 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c18
+ bl_0_18 br_0_18 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c18
+ bl_0_18 br_0_18 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c18
+ bl_0_18 br_0_18 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c18
+ bl_0_18 br_0_18 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c18
+ bl_0_18 br_0_18 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c18
+ bl_0_18 br_0_18 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c18
+ bl_0_18 br_0_18 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c18
+ bl_0_18 br_0_18 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c18
+ bl_0_18 br_0_18 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c18
+ bl_0_18 br_0_18 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c18
+ bl_0_18 br_0_18 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c18
+ bl_0_18 br_0_18 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c18
+ bl_0_18 br_0_18 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c18
+ bl_0_18 br_0_18 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c18
+ bl_0_18 br_0_18 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c18
+ bl_0_18 br_0_18 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c18
+ bl_0_18 br_0_18 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c18
+ bl_0_18 br_0_18 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c18
+ bl_0_18 br_0_18 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c18
+ bl_0_18 br_0_18 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c18
+ bl_0_18 br_0_18 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c18
+ bl_0_18 br_0_18 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c18
+ bl_0_18 br_0_18 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c18
+ bl_0_18 br_0_18 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c18
+ bl_0_18 br_0_18 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c18
+ bl_0_18 br_0_18 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c18
+ bl_0_18 br_0_18 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c18
+ bl_0_18 br_0_18 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c18
+ bl_0_18 br_0_18 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c18
+ bl_0_18 br_0_18 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c18
+ bl_0_18 br_0_18 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c18
+ bl_0_18 br_0_18 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c18
+ bl_0_18 br_0_18 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c18
+ bl_0_18 br_0_18 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c18
+ bl_0_18 br_0_18 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c18
+ bl_0_18 br_0_18 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c18
+ bl_0_18 br_0_18 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c18
+ bl_0_18 br_0_18 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c18
+ bl_0_18 br_0_18 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c18
+ bl_0_18 br_0_18 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c18
+ bl_0_18 br_0_18 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c18
+ bl_0_18 br_0_18 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c18
+ bl_0_18 br_0_18 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c18
+ bl_0_18 br_0_18 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c18
+ bl_0_18 br_0_18 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c18
+ bl_0_18 br_0_18 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c18
+ bl_0_18 br_0_18 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c18
+ bl_0_18 br_0_18 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c18
+ bl_0_18 br_0_18 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c18
+ bl_0_18 br_0_18 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c18
+ bl_0_18 br_0_18 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c18
+ bl_0_18 br_0_18 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c18
+ bl_0_18 br_0_18 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c18
+ bl_0_18 br_0_18 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c18
+ bl_0_18 br_0_18 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c18
+ bl_0_18 br_0_18 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c18
+ bl_0_18 br_0_18 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c18
+ bl_0_18 br_0_18 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c18
+ bl_0_18 br_0_18 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c18
+ bl_0_18 br_0_18 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c18
+ bl_0_18 br_0_18 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c18
+ bl_0_18 br_0_18 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c18
+ bl_0_18 br_0_18 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c18
+ bl_0_18 br_0_18 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c18
+ bl_0_18 br_0_18 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c18
+ bl_0_18 br_0_18 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c18
+ bl_0_18 br_0_18 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c18
+ bl_0_18 br_0_18 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c18
+ bl_0_18 br_0_18 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c18
+ bl_0_18 br_0_18 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c18
+ bl_0_18 br_0_18 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c18
+ bl_0_18 br_0_18 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c18
+ bl_0_18 br_0_18 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c18
+ bl_0_18 br_0_18 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c18
+ bl_0_18 br_0_18 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c18
+ bl_0_18 br_0_18 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c18
+ bl_0_18 br_0_18 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c18
+ bl_0_18 br_0_18 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c18
+ bl_0_18 br_0_18 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c18
+ bl_0_18 br_0_18 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c18
+ bl_0_18 br_0_18 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c18
+ bl_0_18 br_0_18 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c18
+ bl_0_18 br_0_18 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c18
+ bl_0_18 br_0_18 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c18
+ bl_0_18 br_0_18 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c18
+ bl_0_18 br_0_18 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c18
+ bl_0_18 br_0_18 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c18
+ bl_0_18 br_0_18 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c18
+ bl_0_18 br_0_18 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c18
+ bl_0_18 br_0_18 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c18
+ bl_0_18 br_0_18 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c18
+ bl_0_18 br_0_18 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c18
+ bl_0_18 br_0_18 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c18
+ bl_0_18 br_0_18 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c18
+ bl_0_18 br_0_18 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c18
+ bl_0_18 br_0_18 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c18
+ bl_0_18 br_0_18 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c18
+ bl_0_18 br_0_18 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c18
+ bl_0_18 br_0_18 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c18
+ bl_0_18 br_0_18 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c18
+ bl_0_18 br_0_18 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c18
+ bl_0_18 br_0_18 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c18
+ bl_0_18 br_0_18 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c18
+ bl_0_18 br_0_18 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c18
+ bl_0_18 br_0_18 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c18
+ bl_0_18 br_0_18 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c18
+ bl_0_18 br_0_18 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c18
+ bl_0_18 br_0_18 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c18
+ bl_0_18 br_0_18 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c18
+ bl_0_18 br_0_18 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c18
+ bl_0_18 br_0_18 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c18
+ bl_0_18 br_0_18 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c18
+ bl_0_18 br_0_18 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c18
+ bl_0_18 br_0_18 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c18
+ bl_0_18 br_0_18 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c18
+ bl_0_18 br_0_18 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c18
+ bl_0_18 br_0_18 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c18
+ bl_0_18 br_0_18 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c18
+ bl_0_18 br_0_18 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c18
+ bl_0_18 br_0_18 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c18
+ bl_0_18 br_0_18 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c18
+ bl_0_18 br_0_18 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c18
+ bl_0_18 br_0_18 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c18
+ bl_0_18 br_0_18 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c18
+ bl_0_18 br_0_18 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c18
+ bl_0_18 br_0_18 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c18
+ bl_0_18 br_0_18 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c18
+ bl_0_18 br_0_18 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c18
+ bl_0_18 br_0_18 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c18
+ bl_0_18 br_0_18 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c18
+ bl_0_18 br_0_18 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c18
+ bl_0_18 br_0_18 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c18
+ bl_0_18 br_0_18 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c18
+ bl_0_18 br_0_18 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c18
+ bl_0_18 br_0_18 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c18
+ bl_0_18 br_0_18 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c18
+ bl_0_18 br_0_18 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c18
+ bl_0_18 br_0_18 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c18
+ bl_0_18 br_0_18 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c18
+ bl_0_18 br_0_18 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c18
+ bl_0_18 br_0_18 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c18
+ bl_0_18 br_0_18 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c18
+ bl_0_18 br_0_18 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c18
+ bl_0_18 br_0_18 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c18
+ bl_0_18 br_0_18 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c18
+ bl_0_18 br_0_18 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c18
+ bl_0_18 br_0_18 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c18
+ bl_0_18 br_0_18 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c18
+ bl_0_18 br_0_18 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c18
+ bl_0_18 br_0_18 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c18
+ bl_0_18 br_0_18 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c18
+ bl_0_18 br_0_18 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c18
+ bl_0_18 br_0_18 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c18
+ bl_0_18 br_0_18 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c18
+ bl_0_18 br_0_18 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c18
+ bl_0_18 br_0_18 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c18
+ bl_0_18 br_0_18 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c18
+ bl_0_18 br_0_18 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c18
+ bl_0_18 br_0_18 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c18
+ bl_0_18 br_0_18 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c18
+ bl_0_18 br_0_18 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c18
+ bl_0_18 br_0_18 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c18
+ bl_0_18 br_0_18 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c18
+ bl_0_18 br_0_18 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c18
+ bl_0_18 br_0_18 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c18
+ bl_0_18 br_0_18 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c18
+ bl_0_18 br_0_18 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c18
+ bl_0_18 br_0_18 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c18
+ bl_0_18 br_0_18 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c18
+ bl_0_18 br_0_18 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c18
+ bl_0_18 br_0_18 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c18
+ bl_0_18 br_0_18 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c18
+ bl_0_18 br_0_18 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c18
+ bl_0_18 br_0_18 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c18
+ bl_0_18 br_0_18 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c18
+ bl_0_18 br_0_18 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c18
+ bl_0_18 br_0_18 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c18
+ bl_0_18 br_0_18 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c18
+ bl_0_18 br_0_18 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c18
+ bl_0_18 br_0_18 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c18
+ bl_0_18 br_0_18 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c18
+ bl_0_18 br_0_18 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c18
+ bl_0_18 br_0_18 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c18
+ bl_0_18 br_0_18 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c18
+ bl_0_18 br_0_18 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c18
+ bl_0_18 br_0_18 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c18
+ bl_0_18 br_0_18 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c18
+ bl_0_18 br_0_18 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c18
+ bl_0_18 br_0_18 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c18
+ bl_0_18 br_0_18 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c18
+ bl_0_18 br_0_18 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c18
+ bl_0_18 br_0_18 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c18
+ bl_0_18 br_0_18 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c18
+ bl_0_18 br_0_18 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c18
+ bl_0_18 br_0_18 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c18
+ bl_0_18 br_0_18 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c18
+ bl_0_18 br_0_18 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c18
+ bl_0_18 br_0_18 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c18
+ bl_0_18 br_0_18 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c18
+ bl_0_18 br_0_18 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c18
+ bl_0_18 br_0_18 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c18
+ bl_0_18 br_0_18 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c18
+ bl_0_18 br_0_18 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c18
+ bl_0_18 br_0_18 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c18
+ bl_0_18 br_0_18 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c18
+ bl_0_18 br_0_18 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c18
+ bl_0_18 br_0_18 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c18
+ bl_0_18 br_0_18 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c18
+ bl_0_18 br_0_18 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c18
+ bl_0_18 br_0_18 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c18
+ bl_0_18 br_0_18 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c18
+ bl_0_18 br_0_18 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c18
+ bl_0_18 br_0_18 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c18
+ bl_0_18 br_0_18 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c18
+ bl_0_18 br_0_18 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c18
+ bl_0_18 br_0_18 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c18
+ bl_0_18 br_0_18 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c18
+ bl_0_18 br_0_18 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c18
+ bl_0_18 br_0_18 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c18
+ bl_0_18 br_0_18 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c18
+ bl_0_18 br_0_18 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c18
+ bl_0_18 br_0_18 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c18
+ bl_0_18 br_0_18 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c18
+ bl_0_18 br_0_18 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c18
+ bl_0_18 br_0_18 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c18
+ bl_0_18 br_0_18 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c18
+ bl_0_18 br_0_18 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c18
+ bl_0_18 br_0_18 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c18
+ bl_0_18 br_0_18 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c18
+ bl_0_18 br_0_18 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c18
+ bl_0_18 br_0_18 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c18
+ bl_0_18 br_0_18 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c18
+ bl_0_18 br_0_18 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c18
+ bl_0_18 br_0_18 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c18
+ bl_0_18 br_0_18 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c18
+ bl_0_18 br_0_18 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c18
+ bl_0_18 br_0_18 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c18
+ bl_0_18 br_0_18 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c18
+ bl_0_18 br_0_18 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c18
+ bl_0_18 br_0_18 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c18
+ bl_0_18 br_0_18 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c18
+ bl_0_18 br_0_18 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c18
+ bl_0_18 br_0_18 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c18
+ bl_0_18 br_0_18 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c18
+ bl_0_18 br_0_18 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c18
+ bl_0_18 br_0_18 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c18
+ bl_0_18 br_0_18 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c18
+ bl_0_18 br_0_18 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c18
+ bl_0_18 br_0_18 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c18
+ bl_0_18 br_0_18 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c18
+ bl_0_18 br_0_18 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c18
+ bl_0_18 br_0_18 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c18
+ bl_0_18 br_0_18 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c19
+ bl_0_19 br_0_19 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c19
+ bl_0_19 br_0_19 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c19
+ bl_0_19 br_0_19 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c19
+ bl_0_19 br_0_19 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c19
+ bl_0_19 br_0_19 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c19
+ bl_0_19 br_0_19 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c19
+ bl_0_19 br_0_19 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c19
+ bl_0_19 br_0_19 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c19
+ bl_0_19 br_0_19 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c19
+ bl_0_19 br_0_19 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c19
+ bl_0_19 br_0_19 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c19
+ bl_0_19 br_0_19 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c19
+ bl_0_19 br_0_19 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c19
+ bl_0_19 br_0_19 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c19
+ bl_0_19 br_0_19 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c19
+ bl_0_19 br_0_19 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c19
+ bl_0_19 br_0_19 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c19
+ bl_0_19 br_0_19 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c19
+ bl_0_19 br_0_19 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c19
+ bl_0_19 br_0_19 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c19
+ bl_0_19 br_0_19 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c19
+ bl_0_19 br_0_19 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c19
+ bl_0_19 br_0_19 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c19
+ bl_0_19 br_0_19 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c19
+ bl_0_19 br_0_19 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c19
+ bl_0_19 br_0_19 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c19
+ bl_0_19 br_0_19 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c19
+ bl_0_19 br_0_19 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c19
+ bl_0_19 br_0_19 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c19
+ bl_0_19 br_0_19 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c19
+ bl_0_19 br_0_19 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c19
+ bl_0_19 br_0_19 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c19
+ bl_0_19 br_0_19 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c19
+ bl_0_19 br_0_19 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c19
+ bl_0_19 br_0_19 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c19
+ bl_0_19 br_0_19 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c19
+ bl_0_19 br_0_19 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c19
+ bl_0_19 br_0_19 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c19
+ bl_0_19 br_0_19 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c19
+ bl_0_19 br_0_19 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c19
+ bl_0_19 br_0_19 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c19
+ bl_0_19 br_0_19 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c19
+ bl_0_19 br_0_19 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c19
+ bl_0_19 br_0_19 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c19
+ bl_0_19 br_0_19 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c19
+ bl_0_19 br_0_19 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c19
+ bl_0_19 br_0_19 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c19
+ bl_0_19 br_0_19 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c19
+ bl_0_19 br_0_19 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c19
+ bl_0_19 br_0_19 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c19
+ bl_0_19 br_0_19 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c19
+ bl_0_19 br_0_19 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c19
+ bl_0_19 br_0_19 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c19
+ bl_0_19 br_0_19 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c19
+ bl_0_19 br_0_19 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c19
+ bl_0_19 br_0_19 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c19
+ bl_0_19 br_0_19 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c19
+ bl_0_19 br_0_19 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c19
+ bl_0_19 br_0_19 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c19
+ bl_0_19 br_0_19 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c19
+ bl_0_19 br_0_19 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c19
+ bl_0_19 br_0_19 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c19
+ bl_0_19 br_0_19 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c19
+ bl_0_19 br_0_19 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c19
+ bl_0_19 br_0_19 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c19
+ bl_0_19 br_0_19 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c19
+ bl_0_19 br_0_19 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c19
+ bl_0_19 br_0_19 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c19
+ bl_0_19 br_0_19 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c19
+ bl_0_19 br_0_19 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c19
+ bl_0_19 br_0_19 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c19
+ bl_0_19 br_0_19 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c19
+ bl_0_19 br_0_19 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c19
+ bl_0_19 br_0_19 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c19
+ bl_0_19 br_0_19 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c19
+ bl_0_19 br_0_19 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c19
+ bl_0_19 br_0_19 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c19
+ bl_0_19 br_0_19 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c19
+ bl_0_19 br_0_19 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c19
+ bl_0_19 br_0_19 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c19
+ bl_0_19 br_0_19 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c19
+ bl_0_19 br_0_19 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c19
+ bl_0_19 br_0_19 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c19
+ bl_0_19 br_0_19 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c19
+ bl_0_19 br_0_19 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c19
+ bl_0_19 br_0_19 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c19
+ bl_0_19 br_0_19 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c19
+ bl_0_19 br_0_19 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c19
+ bl_0_19 br_0_19 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c19
+ bl_0_19 br_0_19 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c19
+ bl_0_19 br_0_19 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c19
+ bl_0_19 br_0_19 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c19
+ bl_0_19 br_0_19 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c19
+ bl_0_19 br_0_19 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c19
+ bl_0_19 br_0_19 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c19
+ bl_0_19 br_0_19 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c19
+ bl_0_19 br_0_19 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c19
+ bl_0_19 br_0_19 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c19
+ bl_0_19 br_0_19 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c19
+ bl_0_19 br_0_19 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c19
+ bl_0_19 br_0_19 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c19
+ bl_0_19 br_0_19 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c19
+ bl_0_19 br_0_19 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c19
+ bl_0_19 br_0_19 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c19
+ bl_0_19 br_0_19 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c19
+ bl_0_19 br_0_19 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c19
+ bl_0_19 br_0_19 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c19
+ bl_0_19 br_0_19 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c19
+ bl_0_19 br_0_19 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c19
+ bl_0_19 br_0_19 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c19
+ bl_0_19 br_0_19 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c19
+ bl_0_19 br_0_19 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c19
+ bl_0_19 br_0_19 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c19
+ bl_0_19 br_0_19 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c19
+ bl_0_19 br_0_19 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c19
+ bl_0_19 br_0_19 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c19
+ bl_0_19 br_0_19 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c19
+ bl_0_19 br_0_19 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c19
+ bl_0_19 br_0_19 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c19
+ bl_0_19 br_0_19 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c19
+ bl_0_19 br_0_19 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c19
+ bl_0_19 br_0_19 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c19
+ bl_0_19 br_0_19 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c19
+ bl_0_19 br_0_19 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c19
+ bl_0_19 br_0_19 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c19
+ bl_0_19 br_0_19 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c19
+ bl_0_19 br_0_19 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c19
+ bl_0_19 br_0_19 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c19
+ bl_0_19 br_0_19 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c19
+ bl_0_19 br_0_19 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c19
+ bl_0_19 br_0_19 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c19
+ bl_0_19 br_0_19 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c19
+ bl_0_19 br_0_19 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c19
+ bl_0_19 br_0_19 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c19
+ bl_0_19 br_0_19 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c19
+ bl_0_19 br_0_19 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c19
+ bl_0_19 br_0_19 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c19
+ bl_0_19 br_0_19 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c19
+ bl_0_19 br_0_19 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c19
+ bl_0_19 br_0_19 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c19
+ bl_0_19 br_0_19 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c19
+ bl_0_19 br_0_19 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c19
+ bl_0_19 br_0_19 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c19
+ bl_0_19 br_0_19 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c19
+ bl_0_19 br_0_19 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c19
+ bl_0_19 br_0_19 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c19
+ bl_0_19 br_0_19 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c19
+ bl_0_19 br_0_19 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c19
+ bl_0_19 br_0_19 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c19
+ bl_0_19 br_0_19 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c19
+ bl_0_19 br_0_19 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c19
+ bl_0_19 br_0_19 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c19
+ bl_0_19 br_0_19 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c19
+ bl_0_19 br_0_19 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c19
+ bl_0_19 br_0_19 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c19
+ bl_0_19 br_0_19 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c19
+ bl_0_19 br_0_19 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c19
+ bl_0_19 br_0_19 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c19
+ bl_0_19 br_0_19 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c19
+ bl_0_19 br_0_19 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c19
+ bl_0_19 br_0_19 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c19
+ bl_0_19 br_0_19 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c19
+ bl_0_19 br_0_19 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c19
+ bl_0_19 br_0_19 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c19
+ bl_0_19 br_0_19 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c19
+ bl_0_19 br_0_19 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c19
+ bl_0_19 br_0_19 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c19
+ bl_0_19 br_0_19 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c19
+ bl_0_19 br_0_19 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c19
+ bl_0_19 br_0_19 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c19
+ bl_0_19 br_0_19 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c19
+ bl_0_19 br_0_19 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c19
+ bl_0_19 br_0_19 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c19
+ bl_0_19 br_0_19 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c19
+ bl_0_19 br_0_19 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c19
+ bl_0_19 br_0_19 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c19
+ bl_0_19 br_0_19 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c19
+ bl_0_19 br_0_19 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c19
+ bl_0_19 br_0_19 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c19
+ bl_0_19 br_0_19 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c19
+ bl_0_19 br_0_19 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c19
+ bl_0_19 br_0_19 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c19
+ bl_0_19 br_0_19 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c19
+ bl_0_19 br_0_19 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c19
+ bl_0_19 br_0_19 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c19
+ bl_0_19 br_0_19 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c19
+ bl_0_19 br_0_19 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c19
+ bl_0_19 br_0_19 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c19
+ bl_0_19 br_0_19 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c19
+ bl_0_19 br_0_19 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c19
+ bl_0_19 br_0_19 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c19
+ bl_0_19 br_0_19 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c19
+ bl_0_19 br_0_19 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c19
+ bl_0_19 br_0_19 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c19
+ bl_0_19 br_0_19 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c19
+ bl_0_19 br_0_19 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c19
+ bl_0_19 br_0_19 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c19
+ bl_0_19 br_0_19 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c19
+ bl_0_19 br_0_19 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c19
+ bl_0_19 br_0_19 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c19
+ bl_0_19 br_0_19 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c19
+ bl_0_19 br_0_19 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c19
+ bl_0_19 br_0_19 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c19
+ bl_0_19 br_0_19 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c19
+ bl_0_19 br_0_19 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c19
+ bl_0_19 br_0_19 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c19
+ bl_0_19 br_0_19 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c19
+ bl_0_19 br_0_19 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c19
+ bl_0_19 br_0_19 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c19
+ bl_0_19 br_0_19 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c19
+ bl_0_19 br_0_19 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c19
+ bl_0_19 br_0_19 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c19
+ bl_0_19 br_0_19 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c19
+ bl_0_19 br_0_19 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c19
+ bl_0_19 br_0_19 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c19
+ bl_0_19 br_0_19 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c19
+ bl_0_19 br_0_19 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c19
+ bl_0_19 br_0_19 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c19
+ bl_0_19 br_0_19 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c19
+ bl_0_19 br_0_19 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c19
+ bl_0_19 br_0_19 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c19
+ bl_0_19 br_0_19 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c19
+ bl_0_19 br_0_19 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c19
+ bl_0_19 br_0_19 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c19
+ bl_0_19 br_0_19 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c19
+ bl_0_19 br_0_19 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c19
+ bl_0_19 br_0_19 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c19
+ bl_0_19 br_0_19 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c19
+ bl_0_19 br_0_19 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c19
+ bl_0_19 br_0_19 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c19
+ bl_0_19 br_0_19 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c19
+ bl_0_19 br_0_19 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c19
+ bl_0_19 br_0_19 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c19
+ bl_0_19 br_0_19 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c19
+ bl_0_19 br_0_19 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c19
+ bl_0_19 br_0_19 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c19
+ bl_0_19 br_0_19 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c19
+ bl_0_19 br_0_19 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c19
+ bl_0_19 br_0_19 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c19
+ bl_0_19 br_0_19 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c19
+ bl_0_19 br_0_19 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c19
+ bl_0_19 br_0_19 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c19
+ bl_0_19 br_0_19 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c19
+ bl_0_19 br_0_19 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c19
+ bl_0_19 br_0_19 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c19
+ bl_0_19 br_0_19 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c19
+ bl_0_19 br_0_19 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c19
+ bl_0_19 br_0_19 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c19
+ bl_0_19 br_0_19 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c19
+ bl_0_19 br_0_19 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c19
+ bl_0_19 br_0_19 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c19
+ bl_0_19 br_0_19 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c19
+ bl_0_19 br_0_19 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c19
+ bl_0_19 br_0_19 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c19
+ bl_0_19 br_0_19 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c19
+ bl_0_19 br_0_19 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c20
+ bl_0_20 br_0_20 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c20
+ bl_0_20 br_0_20 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c20
+ bl_0_20 br_0_20 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c20
+ bl_0_20 br_0_20 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c20
+ bl_0_20 br_0_20 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c20
+ bl_0_20 br_0_20 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c20
+ bl_0_20 br_0_20 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c20
+ bl_0_20 br_0_20 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c20
+ bl_0_20 br_0_20 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c20
+ bl_0_20 br_0_20 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c20
+ bl_0_20 br_0_20 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c20
+ bl_0_20 br_0_20 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c20
+ bl_0_20 br_0_20 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c20
+ bl_0_20 br_0_20 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c20
+ bl_0_20 br_0_20 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c20
+ bl_0_20 br_0_20 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c20
+ bl_0_20 br_0_20 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c20
+ bl_0_20 br_0_20 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c20
+ bl_0_20 br_0_20 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c20
+ bl_0_20 br_0_20 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c20
+ bl_0_20 br_0_20 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c20
+ bl_0_20 br_0_20 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c20
+ bl_0_20 br_0_20 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c20
+ bl_0_20 br_0_20 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c20
+ bl_0_20 br_0_20 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c20
+ bl_0_20 br_0_20 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c20
+ bl_0_20 br_0_20 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c20
+ bl_0_20 br_0_20 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c20
+ bl_0_20 br_0_20 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c20
+ bl_0_20 br_0_20 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c20
+ bl_0_20 br_0_20 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c20
+ bl_0_20 br_0_20 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c20
+ bl_0_20 br_0_20 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c20
+ bl_0_20 br_0_20 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c20
+ bl_0_20 br_0_20 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c20
+ bl_0_20 br_0_20 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c20
+ bl_0_20 br_0_20 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c20
+ bl_0_20 br_0_20 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c20
+ bl_0_20 br_0_20 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c20
+ bl_0_20 br_0_20 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c20
+ bl_0_20 br_0_20 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c20
+ bl_0_20 br_0_20 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c20
+ bl_0_20 br_0_20 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c20
+ bl_0_20 br_0_20 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c20
+ bl_0_20 br_0_20 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c20
+ bl_0_20 br_0_20 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c20
+ bl_0_20 br_0_20 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c20
+ bl_0_20 br_0_20 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c20
+ bl_0_20 br_0_20 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c20
+ bl_0_20 br_0_20 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c20
+ bl_0_20 br_0_20 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c20
+ bl_0_20 br_0_20 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c20
+ bl_0_20 br_0_20 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c20
+ bl_0_20 br_0_20 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c20
+ bl_0_20 br_0_20 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c20
+ bl_0_20 br_0_20 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c20
+ bl_0_20 br_0_20 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c20
+ bl_0_20 br_0_20 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c20
+ bl_0_20 br_0_20 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c20
+ bl_0_20 br_0_20 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c20
+ bl_0_20 br_0_20 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c20
+ bl_0_20 br_0_20 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c20
+ bl_0_20 br_0_20 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c20
+ bl_0_20 br_0_20 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c20
+ bl_0_20 br_0_20 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c20
+ bl_0_20 br_0_20 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c20
+ bl_0_20 br_0_20 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c20
+ bl_0_20 br_0_20 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c20
+ bl_0_20 br_0_20 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c20
+ bl_0_20 br_0_20 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c20
+ bl_0_20 br_0_20 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c20
+ bl_0_20 br_0_20 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c20
+ bl_0_20 br_0_20 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c20
+ bl_0_20 br_0_20 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c20
+ bl_0_20 br_0_20 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c20
+ bl_0_20 br_0_20 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c20
+ bl_0_20 br_0_20 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c20
+ bl_0_20 br_0_20 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c20
+ bl_0_20 br_0_20 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c20
+ bl_0_20 br_0_20 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c20
+ bl_0_20 br_0_20 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c20
+ bl_0_20 br_0_20 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c20
+ bl_0_20 br_0_20 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c20
+ bl_0_20 br_0_20 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c20
+ bl_0_20 br_0_20 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c20
+ bl_0_20 br_0_20 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c20
+ bl_0_20 br_0_20 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c20
+ bl_0_20 br_0_20 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c20
+ bl_0_20 br_0_20 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c20
+ bl_0_20 br_0_20 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c20
+ bl_0_20 br_0_20 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c20
+ bl_0_20 br_0_20 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c20
+ bl_0_20 br_0_20 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c20
+ bl_0_20 br_0_20 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c20
+ bl_0_20 br_0_20 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c20
+ bl_0_20 br_0_20 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c20
+ bl_0_20 br_0_20 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c20
+ bl_0_20 br_0_20 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c20
+ bl_0_20 br_0_20 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c20
+ bl_0_20 br_0_20 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c20
+ bl_0_20 br_0_20 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c20
+ bl_0_20 br_0_20 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c20
+ bl_0_20 br_0_20 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c20
+ bl_0_20 br_0_20 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c20
+ bl_0_20 br_0_20 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c20
+ bl_0_20 br_0_20 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c20
+ bl_0_20 br_0_20 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c20
+ bl_0_20 br_0_20 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c20
+ bl_0_20 br_0_20 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c20
+ bl_0_20 br_0_20 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c20
+ bl_0_20 br_0_20 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c20
+ bl_0_20 br_0_20 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c20
+ bl_0_20 br_0_20 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c20
+ bl_0_20 br_0_20 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c20
+ bl_0_20 br_0_20 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c20
+ bl_0_20 br_0_20 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c20
+ bl_0_20 br_0_20 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c20
+ bl_0_20 br_0_20 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c20
+ bl_0_20 br_0_20 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c20
+ bl_0_20 br_0_20 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c20
+ bl_0_20 br_0_20 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c20
+ bl_0_20 br_0_20 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c20
+ bl_0_20 br_0_20 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c20
+ bl_0_20 br_0_20 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c20
+ bl_0_20 br_0_20 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c20
+ bl_0_20 br_0_20 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c20
+ bl_0_20 br_0_20 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c20
+ bl_0_20 br_0_20 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c20
+ bl_0_20 br_0_20 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c20
+ bl_0_20 br_0_20 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c20
+ bl_0_20 br_0_20 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c20
+ bl_0_20 br_0_20 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c20
+ bl_0_20 br_0_20 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c20
+ bl_0_20 br_0_20 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c20
+ bl_0_20 br_0_20 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c20
+ bl_0_20 br_0_20 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c20
+ bl_0_20 br_0_20 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c20
+ bl_0_20 br_0_20 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c20
+ bl_0_20 br_0_20 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c20
+ bl_0_20 br_0_20 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c20
+ bl_0_20 br_0_20 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c20
+ bl_0_20 br_0_20 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c20
+ bl_0_20 br_0_20 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c20
+ bl_0_20 br_0_20 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c20
+ bl_0_20 br_0_20 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c20
+ bl_0_20 br_0_20 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c20
+ bl_0_20 br_0_20 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c20
+ bl_0_20 br_0_20 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c20
+ bl_0_20 br_0_20 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c20
+ bl_0_20 br_0_20 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c20
+ bl_0_20 br_0_20 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c20
+ bl_0_20 br_0_20 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c20
+ bl_0_20 br_0_20 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c20
+ bl_0_20 br_0_20 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c20
+ bl_0_20 br_0_20 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c20
+ bl_0_20 br_0_20 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c20
+ bl_0_20 br_0_20 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c20
+ bl_0_20 br_0_20 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c20
+ bl_0_20 br_0_20 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c20
+ bl_0_20 br_0_20 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c20
+ bl_0_20 br_0_20 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c20
+ bl_0_20 br_0_20 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c20
+ bl_0_20 br_0_20 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c20
+ bl_0_20 br_0_20 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c20
+ bl_0_20 br_0_20 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c20
+ bl_0_20 br_0_20 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c20
+ bl_0_20 br_0_20 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c20
+ bl_0_20 br_0_20 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c20
+ bl_0_20 br_0_20 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c20
+ bl_0_20 br_0_20 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c20
+ bl_0_20 br_0_20 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c20
+ bl_0_20 br_0_20 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c20
+ bl_0_20 br_0_20 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c20
+ bl_0_20 br_0_20 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c20
+ bl_0_20 br_0_20 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c20
+ bl_0_20 br_0_20 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c20
+ bl_0_20 br_0_20 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c20
+ bl_0_20 br_0_20 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c20
+ bl_0_20 br_0_20 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c20
+ bl_0_20 br_0_20 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c20
+ bl_0_20 br_0_20 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c20
+ bl_0_20 br_0_20 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c20
+ bl_0_20 br_0_20 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c20
+ bl_0_20 br_0_20 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c20
+ bl_0_20 br_0_20 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c20
+ bl_0_20 br_0_20 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c20
+ bl_0_20 br_0_20 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c20
+ bl_0_20 br_0_20 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c20
+ bl_0_20 br_0_20 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c20
+ bl_0_20 br_0_20 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c20
+ bl_0_20 br_0_20 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c20
+ bl_0_20 br_0_20 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c20
+ bl_0_20 br_0_20 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c20
+ bl_0_20 br_0_20 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c20
+ bl_0_20 br_0_20 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c20
+ bl_0_20 br_0_20 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c20
+ bl_0_20 br_0_20 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c20
+ bl_0_20 br_0_20 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c20
+ bl_0_20 br_0_20 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c20
+ bl_0_20 br_0_20 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c20
+ bl_0_20 br_0_20 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c20
+ bl_0_20 br_0_20 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c20
+ bl_0_20 br_0_20 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c20
+ bl_0_20 br_0_20 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c20
+ bl_0_20 br_0_20 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c20
+ bl_0_20 br_0_20 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c20
+ bl_0_20 br_0_20 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c20
+ bl_0_20 br_0_20 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c20
+ bl_0_20 br_0_20 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c20
+ bl_0_20 br_0_20 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c20
+ bl_0_20 br_0_20 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c20
+ bl_0_20 br_0_20 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c20
+ bl_0_20 br_0_20 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c20
+ bl_0_20 br_0_20 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c20
+ bl_0_20 br_0_20 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c20
+ bl_0_20 br_0_20 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c20
+ bl_0_20 br_0_20 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c20
+ bl_0_20 br_0_20 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c20
+ bl_0_20 br_0_20 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c20
+ bl_0_20 br_0_20 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c20
+ bl_0_20 br_0_20 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c20
+ bl_0_20 br_0_20 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c20
+ bl_0_20 br_0_20 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c20
+ bl_0_20 br_0_20 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c20
+ bl_0_20 br_0_20 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c20
+ bl_0_20 br_0_20 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c20
+ bl_0_20 br_0_20 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c20
+ bl_0_20 br_0_20 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c20
+ bl_0_20 br_0_20 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c20
+ bl_0_20 br_0_20 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c20
+ bl_0_20 br_0_20 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c20
+ bl_0_20 br_0_20 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c20
+ bl_0_20 br_0_20 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c20
+ bl_0_20 br_0_20 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c20
+ bl_0_20 br_0_20 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c20
+ bl_0_20 br_0_20 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c20
+ bl_0_20 br_0_20 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c20
+ bl_0_20 br_0_20 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c20
+ bl_0_20 br_0_20 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c20
+ bl_0_20 br_0_20 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c20
+ bl_0_20 br_0_20 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c20
+ bl_0_20 br_0_20 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c20
+ bl_0_20 br_0_20 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c20
+ bl_0_20 br_0_20 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c20
+ bl_0_20 br_0_20 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c20
+ bl_0_20 br_0_20 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c20
+ bl_0_20 br_0_20 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c20
+ bl_0_20 br_0_20 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c20
+ bl_0_20 br_0_20 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c20
+ bl_0_20 br_0_20 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c20
+ bl_0_20 br_0_20 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c20
+ bl_0_20 br_0_20 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c20
+ bl_0_20 br_0_20 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c20
+ bl_0_20 br_0_20 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c20
+ bl_0_20 br_0_20 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c20
+ bl_0_20 br_0_20 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c21
+ bl_0_21 br_0_21 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c21
+ bl_0_21 br_0_21 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c21
+ bl_0_21 br_0_21 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c21
+ bl_0_21 br_0_21 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c21
+ bl_0_21 br_0_21 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c21
+ bl_0_21 br_0_21 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c21
+ bl_0_21 br_0_21 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c21
+ bl_0_21 br_0_21 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c21
+ bl_0_21 br_0_21 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c21
+ bl_0_21 br_0_21 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c21
+ bl_0_21 br_0_21 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c21
+ bl_0_21 br_0_21 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c21
+ bl_0_21 br_0_21 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c21
+ bl_0_21 br_0_21 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c21
+ bl_0_21 br_0_21 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c21
+ bl_0_21 br_0_21 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c21
+ bl_0_21 br_0_21 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c21
+ bl_0_21 br_0_21 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c21
+ bl_0_21 br_0_21 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c21
+ bl_0_21 br_0_21 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c21
+ bl_0_21 br_0_21 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c21
+ bl_0_21 br_0_21 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c21
+ bl_0_21 br_0_21 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c21
+ bl_0_21 br_0_21 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c21
+ bl_0_21 br_0_21 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c21
+ bl_0_21 br_0_21 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c21
+ bl_0_21 br_0_21 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c21
+ bl_0_21 br_0_21 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c21
+ bl_0_21 br_0_21 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c21
+ bl_0_21 br_0_21 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c21
+ bl_0_21 br_0_21 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c21
+ bl_0_21 br_0_21 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c21
+ bl_0_21 br_0_21 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c21
+ bl_0_21 br_0_21 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c21
+ bl_0_21 br_0_21 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c21
+ bl_0_21 br_0_21 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c21
+ bl_0_21 br_0_21 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c21
+ bl_0_21 br_0_21 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c21
+ bl_0_21 br_0_21 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c21
+ bl_0_21 br_0_21 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c21
+ bl_0_21 br_0_21 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c21
+ bl_0_21 br_0_21 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c21
+ bl_0_21 br_0_21 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c21
+ bl_0_21 br_0_21 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c21
+ bl_0_21 br_0_21 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c21
+ bl_0_21 br_0_21 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c21
+ bl_0_21 br_0_21 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c21
+ bl_0_21 br_0_21 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c21
+ bl_0_21 br_0_21 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c21
+ bl_0_21 br_0_21 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c21
+ bl_0_21 br_0_21 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c21
+ bl_0_21 br_0_21 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c21
+ bl_0_21 br_0_21 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c21
+ bl_0_21 br_0_21 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c21
+ bl_0_21 br_0_21 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c21
+ bl_0_21 br_0_21 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c21
+ bl_0_21 br_0_21 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c21
+ bl_0_21 br_0_21 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c21
+ bl_0_21 br_0_21 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c21
+ bl_0_21 br_0_21 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c21
+ bl_0_21 br_0_21 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c21
+ bl_0_21 br_0_21 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c21
+ bl_0_21 br_0_21 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c21
+ bl_0_21 br_0_21 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c21
+ bl_0_21 br_0_21 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c21
+ bl_0_21 br_0_21 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c21
+ bl_0_21 br_0_21 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c21
+ bl_0_21 br_0_21 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c21
+ bl_0_21 br_0_21 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c21
+ bl_0_21 br_0_21 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c21
+ bl_0_21 br_0_21 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c21
+ bl_0_21 br_0_21 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c21
+ bl_0_21 br_0_21 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c21
+ bl_0_21 br_0_21 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c21
+ bl_0_21 br_0_21 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c21
+ bl_0_21 br_0_21 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c21
+ bl_0_21 br_0_21 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c21
+ bl_0_21 br_0_21 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c21
+ bl_0_21 br_0_21 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c21
+ bl_0_21 br_0_21 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c21
+ bl_0_21 br_0_21 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c21
+ bl_0_21 br_0_21 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c21
+ bl_0_21 br_0_21 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c21
+ bl_0_21 br_0_21 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c21
+ bl_0_21 br_0_21 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c21
+ bl_0_21 br_0_21 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c21
+ bl_0_21 br_0_21 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c21
+ bl_0_21 br_0_21 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c21
+ bl_0_21 br_0_21 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c21
+ bl_0_21 br_0_21 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c21
+ bl_0_21 br_0_21 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c21
+ bl_0_21 br_0_21 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c21
+ bl_0_21 br_0_21 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c21
+ bl_0_21 br_0_21 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c21
+ bl_0_21 br_0_21 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c21
+ bl_0_21 br_0_21 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c21
+ bl_0_21 br_0_21 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c21
+ bl_0_21 br_0_21 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c21
+ bl_0_21 br_0_21 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c21
+ bl_0_21 br_0_21 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c21
+ bl_0_21 br_0_21 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c21
+ bl_0_21 br_0_21 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c21
+ bl_0_21 br_0_21 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c21
+ bl_0_21 br_0_21 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c21
+ bl_0_21 br_0_21 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c21
+ bl_0_21 br_0_21 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c21
+ bl_0_21 br_0_21 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c21
+ bl_0_21 br_0_21 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c21
+ bl_0_21 br_0_21 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c21
+ bl_0_21 br_0_21 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c21
+ bl_0_21 br_0_21 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c21
+ bl_0_21 br_0_21 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c21
+ bl_0_21 br_0_21 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c21
+ bl_0_21 br_0_21 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c21
+ bl_0_21 br_0_21 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c21
+ bl_0_21 br_0_21 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c21
+ bl_0_21 br_0_21 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c21
+ bl_0_21 br_0_21 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c21
+ bl_0_21 br_0_21 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c21
+ bl_0_21 br_0_21 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c21
+ bl_0_21 br_0_21 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c21
+ bl_0_21 br_0_21 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c21
+ bl_0_21 br_0_21 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c21
+ bl_0_21 br_0_21 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c21
+ bl_0_21 br_0_21 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c21
+ bl_0_21 br_0_21 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c21
+ bl_0_21 br_0_21 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c21
+ bl_0_21 br_0_21 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c21
+ bl_0_21 br_0_21 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c21
+ bl_0_21 br_0_21 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c21
+ bl_0_21 br_0_21 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c21
+ bl_0_21 br_0_21 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c21
+ bl_0_21 br_0_21 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c21
+ bl_0_21 br_0_21 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c21
+ bl_0_21 br_0_21 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c21
+ bl_0_21 br_0_21 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c21
+ bl_0_21 br_0_21 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c21
+ bl_0_21 br_0_21 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c21
+ bl_0_21 br_0_21 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c21
+ bl_0_21 br_0_21 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c21
+ bl_0_21 br_0_21 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c21
+ bl_0_21 br_0_21 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c21
+ bl_0_21 br_0_21 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c21
+ bl_0_21 br_0_21 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c21
+ bl_0_21 br_0_21 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c21
+ bl_0_21 br_0_21 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c21
+ bl_0_21 br_0_21 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c21
+ bl_0_21 br_0_21 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c21
+ bl_0_21 br_0_21 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c21
+ bl_0_21 br_0_21 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c21
+ bl_0_21 br_0_21 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c21
+ bl_0_21 br_0_21 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c21
+ bl_0_21 br_0_21 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c21
+ bl_0_21 br_0_21 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c21
+ bl_0_21 br_0_21 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c21
+ bl_0_21 br_0_21 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c21
+ bl_0_21 br_0_21 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c21
+ bl_0_21 br_0_21 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c21
+ bl_0_21 br_0_21 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c21
+ bl_0_21 br_0_21 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c21
+ bl_0_21 br_0_21 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c21
+ bl_0_21 br_0_21 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c21
+ bl_0_21 br_0_21 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c21
+ bl_0_21 br_0_21 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c21
+ bl_0_21 br_0_21 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c21
+ bl_0_21 br_0_21 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c21
+ bl_0_21 br_0_21 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c21
+ bl_0_21 br_0_21 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c21
+ bl_0_21 br_0_21 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c21
+ bl_0_21 br_0_21 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c21
+ bl_0_21 br_0_21 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c21
+ bl_0_21 br_0_21 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c21
+ bl_0_21 br_0_21 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c21
+ bl_0_21 br_0_21 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c21
+ bl_0_21 br_0_21 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c21
+ bl_0_21 br_0_21 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c21
+ bl_0_21 br_0_21 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c21
+ bl_0_21 br_0_21 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c21
+ bl_0_21 br_0_21 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c21
+ bl_0_21 br_0_21 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c21
+ bl_0_21 br_0_21 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c21
+ bl_0_21 br_0_21 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c21
+ bl_0_21 br_0_21 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c21
+ bl_0_21 br_0_21 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c21
+ bl_0_21 br_0_21 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c21
+ bl_0_21 br_0_21 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c21
+ bl_0_21 br_0_21 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c21
+ bl_0_21 br_0_21 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c21
+ bl_0_21 br_0_21 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c21
+ bl_0_21 br_0_21 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c21
+ bl_0_21 br_0_21 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c21
+ bl_0_21 br_0_21 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c21
+ bl_0_21 br_0_21 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c21
+ bl_0_21 br_0_21 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c21
+ bl_0_21 br_0_21 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c21
+ bl_0_21 br_0_21 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c21
+ bl_0_21 br_0_21 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c21
+ bl_0_21 br_0_21 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c21
+ bl_0_21 br_0_21 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c21
+ bl_0_21 br_0_21 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c21
+ bl_0_21 br_0_21 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c21
+ bl_0_21 br_0_21 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c21
+ bl_0_21 br_0_21 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c21
+ bl_0_21 br_0_21 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c21
+ bl_0_21 br_0_21 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c21
+ bl_0_21 br_0_21 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c21
+ bl_0_21 br_0_21 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c21
+ bl_0_21 br_0_21 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c21
+ bl_0_21 br_0_21 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c21
+ bl_0_21 br_0_21 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c21
+ bl_0_21 br_0_21 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c21
+ bl_0_21 br_0_21 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c21
+ bl_0_21 br_0_21 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c21
+ bl_0_21 br_0_21 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c21
+ bl_0_21 br_0_21 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c21
+ bl_0_21 br_0_21 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c21
+ bl_0_21 br_0_21 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c21
+ bl_0_21 br_0_21 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c21
+ bl_0_21 br_0_21 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c21
+ bl_0_21 br_0_21 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c21
+ bl_0_21 br_0_21 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c21
+ bl_0_21 br_0_21 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c21
+ bl_0_21 br_0_21 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c21
+ bl_0_21 br_0_21 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c21
+ bl_0_21 br_0_21 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c21
+ bl_0_21 br_0_21 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c21
+ bl_0_21 br_0_21 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c21
+ bl_0_21 br_0_21 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c21
+ bl_0_21 br_0_21 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c21
+ bl_0_21 br_0_21 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c21
+ bl_0_21 br_0_21 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c21
+ bl_0_21 br_0_21 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c21
+ bl_0_21 br_0_21 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c21
+ bl_0_21 br_0_21 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c21
+ bl_0_21 br_0_21 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c21
+ bl_0_21 br_0_21 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c21
+ bl_0_21 br_0_21 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c21
+ bl_0_21 br_0_21 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c21
+ bl_0_21 br_0_21 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c21
+ bl_0_21 br_0_21 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c21
+ bl_0_21 br_0_21 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c21
+ bl_0_21 br_0_21 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c21
+ bl_0_21 br_0_21 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c21
+ bl_0_21 br_0_21 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c21
+ bl_0_21 br_0_21 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c21
+ bl_0_21 br_0_21 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c21
+ bl_0_21 br_0_21 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c21
+ bl_0_21 br_0_21 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c21
+ bl_0_21 br_0_21 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c21
+ bl_0_21 br_0_21 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c21
+ bl_0_21 br_0_21 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c21
+ bl_0_21 br_0_21 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c21
+ bl_0_21 br_0_21 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c21
+ bl_0_21 br_0_21 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c21
+ bl_0_21 br_0_21 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c21
+ bl_0_21 br_0_21 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c22
+ bl_0_22 br_0_22 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c22
+ bl_0_22 br_0_22 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c22
+ bl_0_22 br_0_22 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c22
+ bl_0_22 br_0_22 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c22
+ bl_0_22 br_0_22 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c22
+ bl_0_22 br_0_22 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c22
+ bl_0_22 br_0_22 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c22
+ bl_0_22 br_0_22 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c22
+ bl_0_22 br_0_22 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c22
+ bl_0_22 br_0_22 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c22
+ bl_0_22 br_0_22 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c22
+ bl_0_22 br_0_22 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c22
+ bl_0_22 br_0_22 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c22
+ bl_0_22 br_0_22 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c22
+ bl_0_22 br_0_22 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c22
+ bl_0_22 br_0_22 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c22
+ bl_0_22 br_0_22 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c22
+ bl_0_22 br_0_22 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c22
+ bl_0_22 br_0_22 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c22
+ bl_0_22 br_0_22 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c22
+ bl_0_22 br_0_22 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c22
+ bl_0_22 br_0_22 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c22
+ bl_0_22 br_0_22 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c22
+ bl_0_22 br_0_22 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c22
+ bl_0_22 br_0_22 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c22
+ bl_0_22 br_0_22 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c22
+ bl_0_22 br_0_22 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c22
+ bl_0_22 br_0_22 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c22
+ bl_0_22 br_0_22 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c22
+ bl_0_22 br_0_22 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c22
+ bl_0_22 br_0_22 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c22
+ bl_0_22 br_0_22 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c22
+ bl_0_22 br_0_22 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c22
+ bl_0_22 br_0_22 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c22
+ bl_0_22 br_0_22 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c22
+ bl_0_22 br_0_22 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c22
+ bl_0_22 br_0_22 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c22
+ bl_0_22 br_0_22 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c22
+ bl_0_22 br_0_22 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c22
+ bl_0_22 br_0_22 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c22
+ bl_0_22 br_0_22 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c22
+ bl_0_22 br_0_22 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c22
+ bl_0_22 br_0_22 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c22
+ bl_0_22 br_0_22 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c22
+ bl_0_22 br_0_22 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c22
+ bl_0_22 br_0_22 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c22
+ bl_0_22 br_0_22 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c22
+ bl_0_22 br_0_22 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c22
+ bl_0_22 br_0_22 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c22
+ bl_0_22 br_0_22 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c22
+ bl_0_22 br_0_22 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c22
+ bl_0_22 br_0_22 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c22
+ bl_0_22 br_0_22 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c22
+ bl_0_22 br_0_22 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c22
+ bl_0_22 br_0_22 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c22
+ bl_0_22 br_0_22 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c22
+ bl_0_22 br_0_22 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c22
+ bl_0_22 br_0_22 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c22
+ bl_0_22 br_0_22 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c22
+ bl_0_22 br_0_22 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c22
+ bl_0_22 br_0_22 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c22
+ bl_0_22 br_0_22 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c22
+ bl_0_22 br_0_22 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c22
+ bl_0_22 br_0_22 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c22
+ bl_0_22 br_0_22 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c22
+ bl_0_22 br_0_22 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c22
+ bl_0_22 br_0_22 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c22
+ bl_0_22 br_0_22 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c22
+ bl_0_22 br_0_22 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c22
+ bl_0_22 br_0_22 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c22
+ bl_0_22 br_0_22 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c22
+ bl_0_22 br_0_22 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c22
+ bl_0_22 br_0_22 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c22
+ bl_0_22 br_0_22 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c22
+ bl_0_22 br_0_22 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c22
+ bl_0_22 br_0_22 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c22
+ bl_0_22 br_0_22 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c22
+ bl_0_22 br_0_22 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c22
+ bl_0_22 br_0_22 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c22
+ bl_0_22 br_0_22 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c22
+ bl_0_22 br_0_22 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c22
+ bl_0_22 br_0_22 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c22
+ bl_0_22 br_0_22 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c22
+ bl_0_22 br_0_22 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c22
+ bl_0_22 br_0_22 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c22
+ bl_0_22 br_0_22 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c22
+ bl_0_22 br_0_22 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c22
+ bl_0_22 br_0_22 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c22
+ bl_0_22 br_0_22 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c22
+ bl_0_22 br_0_22 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c22
+ bl_0_22 br_0_22 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c22
+ bl_0_22 br_0_22 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c22
+ bl_0_22 br_0_22 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c22
+ bl_0_22 br_0_22 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c22
+ bl_0_22 br_0_22 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c22
+ bl_0_22 br_0_22 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c22
+ bl_0_22 br_0_22 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c22
+ bl_0_22 br_0_22 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c22
+ bl_0_22 br_0_22 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c22
+ bl_0_22 br_0_22 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c22
+ bl_0_22 br_0_22 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c22
+ bl_0_22 br_0_22 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c22
+ bl_0_22 br_0_22 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c22
+ bl_0_22 br_0_22 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c22
+ bl_0_22 br_0_22 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c22
+ bl_0_22 br_0_22 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c22
+ bl_0_22 br_0_22 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c22
+ bl_0_22 br_0_22 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c22
+ bl_0_22 br_0_22 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c22
+ bl_0_22 br_0_22 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c22
+ bl_0_22 br_0_22 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c22
+ bl_0_22 br_0_22 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c22
+ bl_0_22 br_0_22 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c22
+ bl_0_22 br_0_22 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c22
+ bl_0_22 br_0_22 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c22
+ bl_0_22 br_0_22 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c22
+ bl_0_22 br_0_22 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c22
+ bl_0_22 br_0_22 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c22
+ bl_0_22 br_0_22 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c22
+ bl_0_22 br_0_22 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c22
+ bl_0_22 br_0_22 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c22
+ bl_0_22 br_0_22 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c22
+ bl_0_22 br_0_22 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c22
+ bl_0_22 br_0_22 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c22
+ bl_0_22 br_0_22 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c22
+ bl_0_22 br_0_22 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c22
+ bl_0_22 br_0_22 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c22
+ bl_0_22 br_0_22 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c22
+ bl_0_22 br_0_22 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c22
+ bl_0_22 br_0_22 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c22
+ bl_0_22 br_0_22 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c22
+ bl_0_22 br_0_22 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c22
+ bl_0_22 br_0_22 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c22
+ bl_0_22 br_0_22 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c22
+ bl_0_22 br_0_22 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c22
+ bl_0_22 br_0_22 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c22
+ bl_0_22 br_0_22 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c22
+ bl_0_22 br_0_22 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c22
+ bl_0_22 br_0_22 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c22
+ bl_0_22 br_0_22 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c22
+ bl_0_22 br_0_22 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c22
+ bl_0_22 br_0_22 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c22
+ bl_0_22 br_0_22 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c22
+ bl_0_22 br_0_22 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c22
+ bl_0_22 br_0_22 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c22
+ bl_0_22 br_0_22 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c22
+ bl_0_22 br_0_22 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c22
+ bl_0_22 br_0_22 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c22
+ bl_0_22 br_0_22 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c22
+ bl_0_22 br_0_22 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c22
+ bl_0_22 br_0_22 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c22
+ bl_0_22 br_0_22 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c22
+ bl_0_22 br_0_22 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c22
+ bl_0_22 br_0_22 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c22
+ bl_0_22 br_0_22 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c22
+ bl_0_22 br_0_22 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c22
+ bl_0_22 br_0_22 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c22
+ bl_0_22 br_0_22 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c22
+ bl_0_22 br_0_22 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c22
+ bl_0_22 br_0_22 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c22
+ bl_0_22 br_0_22 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c22
+ bl_0_22 br_0_22 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c22
+ bl_0_22 br_0_22 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c22
+ bl_0_22 br_0_22 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c22
+ bl_0_22 br_0_22 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c22
+ bl_0_22 br_0_22 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c22
+ bl_0_22 br_0_22 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c22
+ bl_0_22 br_0_22 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c22
+ bl_0_22 br_0_22 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c22
+ bl_0_22 br_0_22 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c22
+ bl_0_22 br_0_22 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c22
+ bl_0_22 br_0_22 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c22
+ bl_0_22 br_0_22 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c22
+ bl_0_22 br_0_22 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c22
+ bl_0_22 br_0_22 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c22
+ bl_0_22 br_0_22 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c22
+ bl_0_22 br_0_22 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c22
+ bl_0_22 br_0_22 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c22
+ bl_0_22 br_0_22 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c22
+ bl_0_22 br_0_22 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c22
+ bl_0_22 br_0_22 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c22
+ bl_0_22 br_0_22 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c22
+ bl_0_22 br_0_22 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c22
+ bl_0_22 br_0_22 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c22
+ bl_0_22 br_0_22 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c22
+ bl_0_22 br_0_22 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c22
+ bl_0_22 br_0_22 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c22
+ bl_0_22 br_0_22 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c22
+ bl_0_22 br_0_22 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c22
+ bl_0_22 br_0_22 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c22
+ bl_0_22 br_0_22 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c22
+ bl_0_22 br_0_22 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c22
+ bl_0_22 br_0_22 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c22
+ bl_0_22 br_0_22 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c22
+ bl_0_22 br_0_22 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c22
+ bl_0_22 br_0_22 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c22
+ bl_0_22 br_0_22 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c22
+ bl_0_22 br_0_22 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c22
+ bl_0_22 br_0_22 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c22
+ bl_0_22 br_0_22 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c22
+ bl_0_22 br_0_22 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c22
+ bl_0_22 br_0_22 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c22
+ bl_0_22 br_0_22 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c22
+ bl_0_22 br_0_22 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c22
+ bl_0_22 br_0_22 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c22
+ bl_0_22 br_0_22 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c22
+ bl_0_22 br_0_22 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c22
+ bl_0_22 br_0_22 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c22
+ bl_0_22 br_0_22 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c22
+ bl_0_22 br_0_22 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c22
+ bl_0_22 br_0_22 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c22
+ bl_0_22 br_0_22 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c22
+ bl_0_22 br_0_22 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c22
+ bl_0_22 br_0_22 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c22
+ bl_0_22 br_0_22 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c22
+ bl_0_22 br_0_22 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c22
+ bl_0_22 br_0_22 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c22
+ bl_0_22 br_0_22 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c22
+ bl_0_22 br_0_22 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c22
+ bl_0_22 br_0_22 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c22
+ bl_0_22 br_0_22 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c22
+ bl_0_22 br_0_22 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c22
+ bl_0_22 br_0_22 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c22
+ bl_0_22 br_0_22 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c22
+ bl_0_22 br_0_22 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c22
+ bl_0_22 br_0_22 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c22
+ bl_0_22 br_0_22 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c22
+ bl_0_22 br_0_22 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c22
+ bl_0_22 br_0_22 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c22
+ bl_0_22 br_0_22 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c22
+ bl_0_22 br_0_22 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c22
+ bl_0_22 br_0_22 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c22
+ bl_0_22 br_0_22 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c22
+ bl_0_22 br_0_22 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c22
+ bl_0_22 br_0_22 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c22
+ bl_0_22 br_0_22 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c22
+ bl_0_22 br_0_22 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c22
+ bl_0_22 br_0_22 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c22
+ bl_0_22 br_0_22 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c22
+ bl_0_22 br_0_22 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c22
+ bl_0_22 br_0_22 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c22
+ bl_0_22 br_0_22 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c22
+ bl_0_22 br_0_22 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c22
+ bl_0_22 br_0_22 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c22
+ bl_0_22 br_0_22 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c22
+ bl_0_22 br_0_22 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c22
+ bl_0_22 br_0_22 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c22
+ bl_0_22 br_0_22 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c22
+ bl_0_22 br_0_22 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c22
+ bl_0_22 br_0_22 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c22
+ bl_0_22 br_0_22 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c22
+ bl_0_22 br_0_22 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c22
+ bl_0_22 br_0_22 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c22
+ bl_0_22 br_0_22 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c22
+ bl_0_22 br_0_22 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c22
+ bl_0_22 br_0_22 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c23
+ bl_0_23 br_0_23 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c23
+ bl_0_23 br_0_23 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c23
+ bl_0_23 br_0_23 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c23
+ bl_0_23 br_0_23 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c23
+ bl_0_23 br_0_23 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c23
+ bl_0_23 br_0_23 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c23
+ bl_0_23 br_0_23 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c23
+ bl_0_23 br_0_23 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c23
+ bl_0_23 br_0_23 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c23
+ bl_0_23 br_0_23 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c23
+ bl_0_23 br_0_23 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c23
+ bl_0_23 br_0_23 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c23
+ bl_0_23 br_0_23 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c23
+ bl_0_23 br_0_23 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c23
+ bl_0_23 br_0_23 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c23
+ bl_0_23 br_0_23 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c23
+ bl_0_23 br_0_23 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c23
+ bl_0_23 br_0_23 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c23
+ bl_0_23 br_0_23 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c23
+ bl_0_23 br_0_23 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c23
+ bl_0_23 br_0_23 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c23
+ bl_0_23 br_0_23 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c23
+ bl_0_23 br_0_23 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c23
+ bl_0_23 br_0_23 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c23
+ bl_0_23 br_0_23 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c23
+ bl_0_23 br_0_23 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c23
+ bl_0_23 br_0_23 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c23
+ bl_0_23 br_0_23 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c23
+ bl_0_23 br_0_23 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c23
+ bl_0_23 br_0_23 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c23
+ bl_0_23 br_0_23 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c23
+ bl_0_23 br_0_23 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c23
+ bl_0_23 br_0_23 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c23
+ bl_0_23 br_0_23 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c23
+ bl_0_23 br_0_23 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c23
+ bl_0_23 br_0_23 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c23
+ bl_0_23 br_0_23 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c23
+ bl_0_23 br_0_23 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c23
+ bl_0_23 br_0_23 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c23
+ bl_0_23 br_0_23 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c23
+ bl_0_23 br_0_23 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c23
+ bl_0_23 br_0_23 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c23
+ bl_0_23 br_0_23 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c23
+ bl_0_23 br_0_23 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c23
+ bl_0_23 br_0_23 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c23
+ bl_0_23 br_0_23 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c23
+ bl_0_23 br_0_23 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c23
+ bl_0_23 br_0_23 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c23
+ bl_0_23 br_0_23 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c23
+ bl_0_23 br_0_23 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c23
+ bl_0_23 br_0_23 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c23
+ bl_0_23 br_0_23 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c23
+ bl_0_23 br_0_23 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c23
+ bl_0_23 br_0_23 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c23
+ bl_0_23 br_0_23 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c23
+ bl_0_23 br_0_23 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c23
+ bl_0_23 br_0_23 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c23
+ bl_0_23 br_0_23 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c23
+ bl_0_23 br_0_23 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c23
+ bl_0_23 br_0_23 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c23
+ bl_0_23 br_0_23 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c23
+ bl_0_23 br_0_23 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c23
+ bl_0_23 br_0_23 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c23
+ bl_0_23 br_0_23 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c23
+ bl_0_23 br_0_23 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c23
+ bl_0_23 br_0_23 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c23
+ bl_0_23 br_0_23 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c23
+ bl_0_23 br_0_23 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c23
+ bl_0_23 br_0_23 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c23
+ bl_0_23 br_0_23 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c23
+ bl_0_23 br_0_23 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c23
+ bl_0_23 br_0_23 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c23
+ bl_0_23 br_0_23 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c23
+ bl_0_23 br_0_23 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c23
+ bl_0_23 br_0_23 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c23
+ bl_0_23 br_0_23 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c23
+ bl_0_23 br_0_23 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c23
+ bl_0_23 br_0_23 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c23
+ bl_0_23 br_0_23 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c23
+ bl_0_23 br_0_23 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c23
+ bl_0_23 br_0_23 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c23
+ bl_0_23 br_0_23 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c23
+ bl_0_23 br_0_23 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c23
+ bl_0_23 br_0_23 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c23
+ bl_0_23 br_0_23 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c23
+ bl_0_23 br_0_23 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c23
+ bl_0_23 br_0_23 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c23
+ bl_0_23 br_0_23 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c23
+ bl_0_23 br_0_23 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c23
+ bl_0_23 br_0_23 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c23
+ bl_0_23 br_0_23 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c23
+ bl_0_23 br_0_23 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c23
+ bl_0_23 br_0_23 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c23
+ bl_0_23 br_0_23 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c23
+ bl_0_23 br_0_23 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c23
+ bl_0_23 br_0_23 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c23
+ bl_0_23 br_0_23 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c23
+ bl_0_23 br_0_23 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c23
+ bl_0_23 br_0_23 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c23
+ bl_0_23 br_0_23 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c23
+ bl_0_23 br_0_23 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c23
+ bl_0_23 br_0_23 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c23
+ bl_0_23 br_0_23 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c23
+ bl_0_23 br_0_23 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c23
+ bl_0_23 br_0_23 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c23
+ bl_0_23 br_0_23 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c23
+ bl_0_23 br_0_23 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c23
+ bl_0_23 br_0_23 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c23
+ bl_0_23 br_0_23 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c23
+ bl_0_23 br_0_23 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c23
+ bl_0_23 br_0_23 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c23
+ bl_0_23 br_0_23 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c23
+ bl_0_23 br_0_23 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c23
+ bl_0_23 br_0_23 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c23
+ bl_0_23 br_0_23 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c23
+ bl_0_23 br_0_23 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c23
+ bl_0_23 br_0_23 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c23
+ bl_0_23 br_0_23 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c23
+ bl_0_23 br_0_23 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c23
+ bl_0_23 br_0_23 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c23
+ bl_0_23 br_0_23 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c23
+ bl_0_23 br_0_23 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c23
+ bl_0_23 br_0_23 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c23
+ bl_0_23 br_0_23 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c23
+ bl_0_23 br_0_23 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c23
+ bl_0_23 br_0_23 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c23
+ bl_0_23 br_0_23 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c23
+ bl_0_23 br_0_23 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c23
+ bl_0_23 br_0_23 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c23
+ bl_0_23 br_0_23 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c23
+ bl_0_23 br_0_23 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c23
+ bl_0_23 br_0_23 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c23
+ bl_0_23 br_0_23 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c23
+ bl_0_23 br_0_23 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c23
+ bl_0_23 br_0_23 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c23
+ bl_0_23 br_0_23 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c23
+ bl_0_23 br_0_23 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c23
+ bl_0_23 br_0_23 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c23
+ bl_0_23 br_0_23 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c23
+ bl_0_23 br_0_23 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c23
+ bl_0_23 br_0_23 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c23
+ bl_0_23 br_0_23 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c23
+ bl_0_23 br_0_23 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c23
+ bl_0_23 br_0_23 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c23
+ bl_0_23 br_0_23 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c23
+ bl_0_23 br_0_23 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c23
+ bl_0_23 br_0_23 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c23
+ bl_0_23 br_0_23 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c23
+ bl_0_23 br_0_23 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c23
+ bl_0_23 br_0_23 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c23
+ bl_0_23 br_0_23 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c23
+ bl_0_23 br_0_23 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c23
+ bl_0_23 br_0_23 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c23
+ bl_0_23 br_0_23 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c23
+ bl_0_23 br_0_23 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c23
+ bl_0_23 br_0_23 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c23
+ bl_0_23 br_0_23 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c23
+ bl_0_23 br_0_23 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c23
+ bl_0_23 br_0_23 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c23
+ bl_0_23 br_0_23 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c23
+ bl_0_23 br_0_23 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c23
+ bl_0_23 br_0_23 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c23
+ bl_0_23 br_0_23 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c23
+ bl_0_23 br_0_23 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c23
+ bl_0_23 br_0_23 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c23
+ bl_0_23 br_0_23 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c23
+ bl_0_23 br_0_23 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c23
+ bl_0_23 br_0_23 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c23
+ bl_0_23 br_0_23 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c23
+ bl_0_23 br_0_23 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c23
+ bl_0_23 br_0_23 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c23
+ bl_0_23 br_0_23 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c23
+ bl_0_23 br_0_23 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c23
+ bl_0_23 br_0_23 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c23
+ bl_0_23 br_0_23 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c23
+ bl_0_23 br_0_23 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c23
+ bl_0_23 br_0_23 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c23
+ bl_0_23 br_0_23 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c23
+ bl_0_23 br_0_23 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c23
+ bl_0_23 br_0_23 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c23
+ bl_0_23 br_0_23 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c23
+ bl_0_23 br_0_23 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c23
+ bl_0_23 br_0_23 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c23
+ bl_0_23 br_0_23 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c23
+ bl_0_23 br_0_23 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c23
+ bl_0_23 br_0_23 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c23
+ bl_0_23 br_0_23 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c23
+ bl_0_23 br_0_23 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c23
+ bl_0_23 br_0_23 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c23
+ bl_0_23 br_0_23 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c23
+ bl_0_23 br_0_23 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c23
+ bl_0_23 br_0_23 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c23
+ bl_0_23 br_0_23 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c23
+ bl_0_23 br_0_23 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c23
+ bl_0_23 br_0_23 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c23
+ bl_0_23 br_0_23 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c23
+ bl_0_23 br_0_23 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c23
+ bl_0_23 br_0_23 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c23
+ bl_0_23 br_0_23 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c23
+ bl_0_23 br_0_23 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c23
+ bl_0_23 br_0_23 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c23
+ bl_0_23 br_0_23 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c23
+ bl_0_23 br_0_23 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c23
+ bl_0_23 br_0_23 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c23
+ bl_0_23 br_0_23 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c23
+ bl_0_23 br_0_23 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c23
+ bl_0_23 br_0_23 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c23
+ bl_0_23 br_0_23 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c23
+ bl_0_23 br_0_23 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c23
+ bl_0_23 br_0_23 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c23
+ bl_0_23 br_0_23 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c23
+ bl_0_23 br_0_23 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c23
+ bl_0_23 br_0_23 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c23
+ bl_0_23 br_0_23 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c23
+ bl_0_23 br_0_23 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c23
+ bl_0_23 br_0_23 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c23
+ bl_0_23 br_0_23 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c23
+ bl_0_23 br_0_23 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c23
+ bl_0_23 br_0_23 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c23
+ bl_0_23 br_0_23 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c23
+ bl_0_23 br_0_23 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c23
+ bl_0_23 br_0_23 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c23
+ bl_0_23 br_0_23 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c23
+ bl_0_23 br_0_23 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c23
+ bl_0_23 br_0_23 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c23
+ bl_0_23 br_0_23 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c23
+ bl_0_23 br_0_23 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c23
+ bl_0_23 br_0_23 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c23
+ bl_0_23 br_0_23 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c23
+ bl_0_23 br_0_23 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c23
+ bl_0_23 br_0_23 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c23
+ bl_0_23 br_0_23 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c23
+ bl_0_23 br_0_23 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c23
+ bl_0_23 br_0_23 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c23
+ bl_0_23 br_0_23 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c23
+ bl_0_23 br_0_23 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c23
+ bl_0_23 br_0_23 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c23
+ bl_0_23 br_0_23 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c23
+ bl_0_23 br_0_23 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c23
+ bl_0_23 br_0_23 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c23
+ bl_0_23 br_0_23 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c23
+ bl_0_23 br_0_23 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c23
+ bl_0_23 br_0_23 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c23
+ bl_0_23 br_0_23 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c23
+ bl_0_23 br_0_23 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c23
+ bl_0_23 br_0_23 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c23
+ bl_0_23 br_0_23 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c23
+ bl_0_23 br_0_23 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c23
+ bl_0_23 br_0_23 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c23
+ bl_0_23 br_0_23 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c23
+ bl_0_23 br_0_23 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c23
+ bl_0_23 br_0_23 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c23
+ bl_0_23 br_0_23 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c23
+ bl_0_23 br_0_23 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c23
+ bl_0_23 br_0_23 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c23
+ bl_0_23 br_0_23 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c24
+ bl_0_24 br_0_24 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c24
+ bl_0_24 br_0_24 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c24
+ bl_0_24 br_0_24 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c24
+ bl_0_24 br_0_24 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c24
+ bl_0_24 br_0_24 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c24
+ bl_0_24 br_0_24 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c24
+ bl_0_24 br_0_24 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c24
+ bl_0_24 br_0_24 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c24
+ bl_0_24 br_0_24 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c24
+ bl_0_24 br_0_24 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c24
+ bl_0_24 br_0_24 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c24
+ bl_0_24 br_0_24 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c24
+ bl_0_24 br_0_24 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c24
+ bl_0_24 br_0_24 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c24
+ bl_0_24 br_0_24 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c24
+ bl_0_24 br_0_24 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c24
+ bl_0_24 br_0_24 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c24
+ bl_0_24 br_0_24 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c24
+ bl_0_24 br_0_24 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c24
+ bl_0_24 br_0_24 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c24
+ bl_0_24 br_0_24 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c24
+ bl_0_24 br_0_24 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c24
+ bl_0_24 br_0_24 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c24
+ bl_0_24 br_0_24 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c24
+ bl_0_24 br_0_24 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c24
+ bl_0_24 br_0_24 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c24
+ bl_0_24 br_0_24 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c24
+ bl_0_24 br_0_24 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c24
+ bl_0_24 br_0_24 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c24
+ bl_0_24 br_0_24 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c24
+ bl_0_24 br_0_24 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c24
+ bl_0_24 br_0_24 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c24
+ bl_0_24 br_0_24 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c24
+ bl_0_24 br_0_24 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c24
+ bl_0_24 br_0_24 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c24
+ bl_0_24 br_0_24 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c24
+ bl_0_24 br_0_24 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c24
+ bl_0_24 br_0_24 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c24
+ bl_0_24 br_0_24 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c24
+ bl_0_24 br_0_24 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c24
+ bl_0_24 br_0_24 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c24
+ bl_0_24 br_0_24 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c24
+ bl_0_24 br_0_24 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c24
+ bl_0_24 br_0_24 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c24
+ bl_0_24 br_0_24 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c24
+ bl_0_24 br_0_24 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c24
+ bl_0_24 br_0_24 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c24
+ bl_0_24 br_0_24 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c24
+ bl_0_24 br_0_24 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c24
+ bl_0_24 br_0_24 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c24
+ bl_0_24 br_0_24 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c24
+ bl_0_24 br_0_24 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c24
+ bl_0_24 br_0_24 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c24
+ bl_0_24 br_0_24 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c24
+ bl_0_24 br_0_24 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c24
+ bl_0_24 br_0_24 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c24
+ bl_0_24 br_0_24 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c24
+ bl_0_24 br_0_24 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c24
+ bl_0_24 br_0_24 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c24
+ bl_0_24 br_0_24 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c24
+ bl_0_24 br_0_24 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c24
+ bl_0_24 br_0_24 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c24
+ bl_0_24 br_0_24 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c24
+ bl_0_24 br_0_24 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c24
+ bl_0_24 br_0_24 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c24
+ bl_0_24 br_0_24 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c24
+ bl_0_24 br_0_24 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c24
+ bl_0_24 br_0_24 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c24
+ bl_0_24 br_0_24 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c24
+ bl_0_24 br_0_24 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c24
+ bl_0_24 br_0_24 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c24
+ bl_0_24 br_0_24 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c24
+ bl_0_24 br_0_24 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c24
+ bl_0_24 br_0_24 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c24
+ bl_0_24 br_0_24 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c24
+ bl_0_24 br_0_24 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c24
+ bl_0_24 br_0_24 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c24
+ bl_0_24 br_0_24 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c24
+ bl_0_24 br_0_24 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c24
+ bl_0_24 br_0_24 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c24
+ bl_0_24 br_0_24 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c24
+ bl_0_24 br_0_24 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c24
+ bl_0_24 br_0_24 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c24
+ bl_0_24 br_0_24 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c24
+ bl_0_24 br_0_24 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c24
+ bl_0_24 br_0_24 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c24
+ bl_0_24 br_0_24 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c24
+ bl_0_24 br_0_24 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c24
+ bl_0_24 br_0_24 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c24
+ bl_0_24 br_0_24 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c24
+ bl_0_24 br_0_24 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c24
+ bl_0_24 br_0_24 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c24
+ bl_0_24 br_0_24 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c24
+ bl_0_24 br_0_24 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c24
+ bl_0_24 br_0_24 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c24
+ bl_0_24 br_0_24 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c24
+ bl_0_24 br_0_24 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c24
+ bl_0_24 br_0_24 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c24
+ bl_0_24 br_0_24 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c24
+ bl_0_24 br_0_24 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c24
+ bl_0_24 br_0_24 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c24
+ bl_0_24 br_0_24 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c24
+ bl_0_24 br_0_24 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c24
+ bl_0_24 br_0_24 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c24
+ bl_0_24 br_0_24 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c24
+ bl_0_24 br_0_24 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c24
+ bl_0_24 br_0_24 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c24
+ bl_0_24 br_0_24 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c24
+ bl_0_24 br_0_24 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c24
+ bl_0_24 br_0_24 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c24
+ bl_0_24 br_0_24 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c24
+ bl_0_24 br_0_24 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c24
+ bl_0_24 br_0_24 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c24
+ bl_0_24 br_0_24 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c24
+ bl_0_24 br_0_24 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c24
+ bl_0_24 br_0_24 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c24
+ bl_0_24 br_0_24 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c24
+ bl_0_24 br_0_24 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c24
+ bl_0_24 br_0_24 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c24
+ bl_0_24 br_0_24 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c24
+ bl_0_24 br_0_24 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c24
+ bl_0_24 br_0_24 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c24
+ bl_0_24 br_0_24 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c24
+ bl_0_24 br_0_24 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c24
+ bl_0_24 br_0_24 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c24
+ bl_0_24 br_0_24 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c24
+ bl_0_24 br_0_24 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c24
+ bl_0_24 br_0_24 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c24
+ bl_0_24 br_0_24 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c24
+ bl_0_24 br_0_24 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c24
+ bl_0_24 br_0_24 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c24
+ bl_0_24 br_0_24 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c24
+ bl_0_24 br_0_24 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c24
+ bl_0_24 br_0_24 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c24
+ bl_0_24 br_0_24 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c24
+ bl_0_24 br_0_24 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c24
+ bl_0_24 br_0_24 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c24
+ bl_0_24 br_0_24 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c24
+ bl_0_24 br_0_24 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c24
+ bl_0_24 br_0_24 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c24
+ bl_0_24 br_0_24 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c24
+ bl_0_24 br_0_24 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c24
+ bl_0_24 br_0_24 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c24
+ bl_0_24 br_0_24 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c24
+ bl_0_24 br_0_24 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c24
+ bl_0_24 br_0_24 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c24
+ bl_0_24 br_0_24 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c24
+ bl_0_24 br_0_24 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c24
+ bl_0_24 br_0_24 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c24
+ bl_0_24 br_0_24 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c24
+ bl_0_24 br_0_24 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c24
+ bl_0_24 br_0_24 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c24
+ bl_0_24 br_0_24 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c24
+ bl_0_24 br_0_24 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c24
+ bl_0_24 br_0_24 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c24
+ bl_0_24 br_0_24 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c24
+ bl_0_24 br_0_24 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c24
+ bl_0_24 br_0_24 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c24
+ bl_0_24 br_0_24 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c24
+ bl_0_24 br_0_24 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c24
+ bl_0_24 br_0_24 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c24
+ bl_0_24 br_0_24 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c24
+ bl_0_24 br_0_24 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c24
+ bl_0_24 br_0_24 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c24
+ bl_0_24 br_0_24 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c24
+ bl_0_24 br_0_24 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c24
+ bl_0_24 br_0_24 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c24
+ bl_0_24 br_0_24 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c24
+ bl_0_24 br_0_24 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c24
+ bl_0_24 br_0_24 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c24
+ bl_0_24 br_0_24 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c24
+ bl_0_24 br_0_24 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c24
+ bl_0_24 br_0_24 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c24
+ bl_0_24 br_0_24 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c24
+ bl_0_24 br_0_24 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c24
+ bl_0_24 br_0_24 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c24
+ bl_0_24 br_0_24 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c24
+ bl_0_24 br_0_24 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c24
+ bl_0_24 br_0_24 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c24
+ bl_0_24 br_0_24 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c24
+ bl_0_24 br_0_24 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c24
+ bl_0_24 br_0_24 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c24
+ bl_0_24 br_0_24 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c24
+ bl_0_24 br_0_24 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c24
+ bl_0_24 br_0_24 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c24
+ bl_0_24 br_0_24 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c24
+ bl_0_24 br_0_24 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c24
+ bl_0_24 br_0_24 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c24
+ bl_0_24 br_0_24 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c24
+ bl_0_24 br_0_24 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c24
+ bl_0_24 br_0_24 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c24
+ bl_0_24 br_0_24 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c24
+ bl_0_24 br_0_24 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c24
+ bl_0_24 br_0_24 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c24
+ bl_0_24 br_0_24 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c24
+ bl_0_24 br_0_24 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c24
+ bl_0_24 br_0_24 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c24
+ bl_0_24 br_0_24 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c24
+ bl_0_24 br_0_24 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c24
+ bl_0_24 br_0_24 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c24
+ bl_0_24 br_0_24 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c24
+ bl_0_24 br_0_24 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c24
+ bl_0_24 br_0_24 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c24
+ bl_0_24 br_0_24 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c24
+ bl_0_24 br_0_24 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c24
+ bl_0_24 br_0_24 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c24
+ bl_0_24 br_0_24 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c24
+ bl_0_24 br_0_24 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c24
+ bl_0_24 br_0_24 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c24
+ bl_0_24 br_0_24 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c24
+ bl_0_24 br_0_24 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c24
+ bl_0_24 br_0_24 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c24
+ bl_0_24 br_0_24 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c24
+ bl_0_24 br_0_24 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c24
+ bl_0_24 br_0_24 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c24
+ bl_0_24 br_0_24 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c24
+ bl_0_24 br_0_24 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c24
+ bl_0_24 br_0_24 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c24
+ bl_0_24 br_0_24 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c24
+ bl_0_24 br_0_24 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c24
+ bl_0_24 br_0_24 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c24
+ bl_0_24 br_0_24 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c24
+ bl_0_24 br_0_24 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c24
+ bl_0_24 br_0_24 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c24
+ bl_0_24 br_0_24 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c24
+ bl_0_24 br_0_24 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c24
+ bl_0_24 br_0_24 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c24
+ bl_0_24 br_0_24 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c24
+ bl_0_24 br_0_24 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c24
+ bl_0_24 br_0_24 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c24
+ bl_0_24 br_0_24 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c24
+ bl_0_24 br_0_24 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c24
+ bl_0_24 br_0_24 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c24
+ bl_0_24 br_0_24 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c24
+ bl_0_24 br_0_24 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c24
+ bl_0_24 br_0_24 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c24
+ bl_0_24 br_0_24 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c24
+ bl_0_24 br_0_24 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c24
+ bl_0_24 br_0_24 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c24
+ bl_0_24 br_0_24 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c24
+ bl_0_24 br_0_24 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c24
+ bl_0_24 br_0_24 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c24
+ bl_0_24 br_0_24 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c24
+ bl_0_24 br_0_24 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c24
+ bl_0_24 br_0_24 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c24
+ bl_0_24 br_0_24 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c24
+ bl_0_24 br_0_24 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c24
+ bl_0_24 br_0_24 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c24
+ bl_0_24 br_0_24 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c24
+ bl_0_24 br_0_24 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c24
+ bl_0_24 br_0_24 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c24
+ bl_0_24 br_0_24 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c24
+ bl_0_24 br_0_24 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c24
+ bl_0_24 br_0_24 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c24
+ bl_0_24 br_0_24 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c24
+ bl_0_24 br_0_24 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c25
+ bl_0_25 br_0_25 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c25
+ bl_0_25 br_0_25 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c25
+ bl_0_25 br_0_25 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c25
+ bl_0_25 br_0_25 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c25
+ bl_0_25 br_0_25 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c25
+ bl_0_25 br_0_25 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c25
+ bl_0_25 br_0_25 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c25
+ bl_0_25 br_0_25 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c25
+ bl_0_25 br_0_25 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c25
+ bl_0_25 br_0_25 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c25
+ bl_0_25 br_0_25 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c25
+ bl_0_25 br_0_25 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c25
+ bl_0_25 br_0_25 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c25
+ bl_0_25 br_0_25 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c25
+ bl_0_25 br_0_25 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c25
+ bl_0_25 br_0_25 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c25
+ bl_0_25 br_0_25 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c25
+ bl_0_25 br_0_25 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c25
+ bl_0_25 br_0_25 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c25
+ bl_0_25 br_0_25 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c25
+ bl_0_25 br_0_25 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c25
+ bl_0_25 br_0_25 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c25
+ bl_0_25 br_0_25 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c25
+ bl_0_25 br_0_25 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c25
+ bl_0_25 br_0_25 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c25
+ bl_0_25 br_0_25 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c25
+ bl_0_25 br_0_25 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c25
+ bl_0_25 br_0_25 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c25
+ bl_0_25 br_0_25 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c25
+ bl_0_25 br_0_25 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c25
+ bl_0_25 br_0_25 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c25
+ bl_0_25 br_0_25 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c25
+ bl_0_25 br_0_25 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c25
+ bl_0_25 br_0_25 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c25
+ bl_0_25 br_0_25 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c25
+ bl_0_25 br_0_25 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c25
+ bl_0_25 br_0_25 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c25
+ bl_0_25 br_0_25 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c25
+ bl_0_25 br_0_25 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c25
+ bl_0_25 br_0_25 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c25
+ bl_0_25 br_0_25 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c25
+ bl_0_25 br_0_25 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c25
+ bl_0_25 br_0_25 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c25
+ bl_0_25 br_0_25 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c25
+ bl_0_25 br_0_25 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c25
+ bl_0_25 br_0_25 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c25
+ bl_0_25 br_0_25 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c25
+ bl_0_25 br_0_25 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c25
+ bl_0_25 br_0_25 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c25
+ bl_0_25 br_0_25 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c25
+ bl_0_25 br_0_25 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c25
+ bl_0_25 br_0_25 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c25
+ bl_0_25 br_0_25 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c25
+ bl_0_25 br_0_25 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c25
+ bl_0_25 br_0_25 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c25
+ bl_0_25 br_0_25 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c25
+ bl_0_25 br_0_25 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c25
+ bl_0_25 br_0_25 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c25
+ bl_0_25 br_0_25 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c25
+ bl_0_25 br_0_25 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c25
+ bl_0_25 br_0_25 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c25
+ bl_0_25 br_0_25 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c25
+ bl_0_25 br_0_25 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c25
+ bl_0_25 br_0_25 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c25
+ bl_0_25 br_0_25 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c25
+ bl_0_25 br_0_25 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c25
+ bl_0_25 br_0_25 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c25
+ bl_0_25 br_0_25 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c25
+ bl_0_25 br_0_25 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c25
+ bl_0_25 br_0_25 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c25
+ bl_0_25 br_0_25 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c25
+ bl_0_25 br_0_25 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c25
+ bl_0_25 br_0_25 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c25
+ bl_0_25 br_0_25 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c25
+ bl_0_25 br_0_25 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c25
+ bl_0_25 br_0_25 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c25
+ bl_0_25 br_0_25 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c25
+ bl_0_25 br_0_25 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c25
+ bl_0_25 br_0_25 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c25
+ bl_0_25 br_0_25 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c25
+ bl_0_25 br_0_25 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c25
+ bl_0_25 br_0_25 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c25
+ bl_0_25 br_0_25 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c25
+ bl_0_25 br_0_25 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c25
+ bl_0_25 br_0_25 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c25
+ bl_0_25 br_0_25 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c25
+ bl_0_25 br_0_25 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c25
+ bl_0_25 br_0_25 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c25
+ bl_0_25 br_0_25 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c25
+ bl_0_25 br_0_25 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c25
+ bl_0_25 br_0_25 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c25
+ bl_0_25 br_0_25 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c25
+ bl_0_25 br_0_25 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c25
+ bl_0_25 br_0_25 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c25
+ bl_0_25 br_0_25 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c25
+ bl_0_25 br_0_25 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c25
+ bl_0_25 br_0_25 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c25
+ bl_0_25 br_0_25 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c25
+ bl_0_25 br_0_25 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c25
+ bl_0_25 br_0_25 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c25
+ bl_0_25 br_0_25 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c25
+ bl_0_25 br_0_25 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c25
+ bl_0_25 br_0_25 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c25
+ bl_0_25 br_0_25 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c25
+ bl_0_25 br_0_25 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c25
+ bl_0_25 br_0_25 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c25
+ bl_0_25 br_0_25 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c25
+ bl_0_25 br_0_25 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c25
+ bl_0_25 br_0_25 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c25
+ bl_0_25 br_0_25 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c25
+ bl_0_25 br_0_25 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c25
+ bl_0_25 br_0_25 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c25
+ bl_0_25 br_0_25 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c25
+ bl_0_25 br_0_25 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c25
+ bl_0_25 br_0_25 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c25
+ bl_0_25 br_0_25 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c25
+ bl_0_25 br_0_25 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c25
+ bl_0_25 br_0_25 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c25
+ bl_0_25 br_0_25 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c25
+ bl_0_25 br_0_25 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c25
+ bl_0_25 br_0_25 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c25
+ bl_0_25 br_0_25 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c25
+ bl_0_25 br_0_25 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c25
+ bl_0_25 br_0_25 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c25
+ bl_0_25 br_0_25 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c25
+ bl_0_25 br_0_25 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c25
+ bl_0_25 br_0_25 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c25
+ bl_0_25 br_0_25 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c25
+ bl_0_25 br_0_25 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c25
+ bl_0_25 br_0_25 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c25
+ bl_0_25 br_0_25 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c25
+ bl_0_25 br_0_25 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c25
+ bl_0_25 br_0_25 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c25
+ bl_0_25 br_0_25 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c25
+ bl_0_25 br_0_25 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c25
+ bl_0_25 br_0_25 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c25
+ bl_0_25 br_0_25 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c25
+ bl_0_25 br_0_25 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c25
+ bl_0_25 br_0_25 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c25
+ bl_0_25 br_0_25 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c25
+ bl_0_25 br_0_25 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c25
+ bl_0_25 br_0_25 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c25
+ bl_0_25 br_0_25 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c25
+ bl_0_25 br_0_25 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c25
+ bl_0_25 br_0_25 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c25
+ bl_0_25 br_0_25 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c25
+ bl_0_25 br_0_25 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c25
+ bl_0_25 br_0_25 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c25
+ bl_0_25 br_0_25 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c25
+ bl_0_25 br_0_25 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c25
+ bl_0_25 br_0_25 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c25
+ bl_0_25 br_0_25 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c25
+ bl_0_25 br_0_25 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c25
+ bl_0_25 br_0_25 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c25
+ bl_0_25 br_0_25 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c25
+ bl_0_25 br_0_25 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c25
+ bl_0_25 br_0_25 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c25
+ bl_0_25 br_0_25 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c25
+ bl_0_25 br_0_25 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c25
+ bl_0_25 br_0_25 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c25
+ bl_0_25 br_0_25 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c25
+ bl_0_25 br_0_25 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c25
+ bl_0_25 br_0_25 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c25
+ bl_0_25 br_0_25 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c25
+ bl_0_25 br_0_25 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c25
+ bl_0_25 br_0_25 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c25
+ bl_0_25 br_0_25 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c25
+ bl_0_25 br_0_25 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c25
+ bl_0_25 br_0_25 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c25
+ bl_0_25 br_0_25 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c25
+ bl_0_25 br_0_25 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c25
+ bl_0_25 br_0_25 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c25
+ bl_0_25 br_0_25 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c25
+ bl_0_25 br_0_25 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c25
+ bl_0_25 br_0_25 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c25
+ bl_0_25 br_0_25 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c25
+ bl_0_25 br_0_25 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c25
+ bl_0_25 br_0_25 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c25
+ bl_0_25 br_0_25 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c25
+ bl_0_25 br_0_25 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c25
+ bl_0_25 br_0_25 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c25
+ bl_0_25 br_0_25 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c25
+ bl_0_25 br_0_25 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c25
+ bl_0_25 br_0_25 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c25
+ bl_0_25 br_0_25 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c25
+ bl_0_25 br_0_25 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c25
+ bl_0_25 br_0_25 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c25
+ bl_0_25 br_0_25 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c25
+ bl_0_25 br_0_25 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c25
+ bl_0_25 br_0_25 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c25
+ bl_0_25 br_0_25 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c25
+ bl_0_25 br_0_25 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c25
+ bl_0_25 br_0_25 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c25
+ bl_0_25 br_0_25 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c25
+ bl_0_25 br_0_25 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c25
+ bl_0_25 br_0_25 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c25
+ bl_0_25 br_0_25 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c25
+ bl_0_25 br_0_25 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c25
+ bl_0_25 br_0_25 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c25
+ bl_0_25 br_0_25 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c25
+ bl_0_25 br_0_25 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c25
+ bl_0_25 br_0_25 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c25
+ bl_0_25 br_0_25 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c25
+ bl_0_25 br_0_25 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c25
+ bl_0_25 br_0_25 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c25
+ bl_0_25 br_0_25 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c25
+ bl_0_25 br_0_25 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c25
+ bl_0_25 br_0_25 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c25
+ bl_0_25 br_0_25 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c25
+ bl_0_25 br_0_25 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c25
+ bl_0_25 br_0_25 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c25
+ bl_0_25 br_0_25 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c25
+ bl_0_25 br_0_25 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c25
+ bl_0_25 br_0_25 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c25
+ bl_0_25 br_0_25 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c25
+ bl_0_25 br_0_25 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c25
+ bl_0_25 br_0_25 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c25
+ bl_0_25 br_0_25 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c25
+ bl_0_25 br_0_25 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c25
+ bl_0_25 br_0_25 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c25
+ bl_0_25 br_0_25 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c25
+ bl_0_25 br_0_25 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c25
+ bl_0_25 br_0_25 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c25
+ bl_0_25 br_0_25 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c25
+ bl_0_25 br_0_25 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c25
+ bl_0_25 br_0_25 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c25
+ bl_0_25 br_0_25 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c25
+ bl_0_25 br_0_25 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c25
+ bl_0_25 br_0_25 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c25
+ bl_0_25 br_0_25 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c25
+ bl_0_25 br_0_25 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c25
+ bl_0_25 br_0_25 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c25
+ bl_0_25 br_0_25 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c25
+ bl_0_25 br_0_25 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c25
+ bl_0_25 br_0_25 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c25
+ bl_0_25 br_0_25 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c25
+ bl_0_25 br_0_25 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c25
+ bl_0_25 br_0_25 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c25
+ bl_0_25 br_0_25 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c25
+ bl_0_25 br_0_25 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c25
+ bl_0_25 br_0_25 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c25
+ bl_0_25 br_0_25 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c25
+ bl_0_25 br_0_25 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c25
+ bl_0_25 br_0_25 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c25
+ bl_0_25 br_0_25 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c25
+ bl_0_25 br_0_25 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c25
+ bl_0_25 br_0_25 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c25
+ bl_0_25 br_0_25 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c25
+ bl_0_25 br_0_25 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c25
+ bl_0_25 br_0_25 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c25
+ bl_0_25 br_0_25 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c25
+ bl_0_25 br_0_25 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c25
+ bl_0_25 br_0_25 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c25
+ bl_0_25 br_0_25 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c25
+ bl_0_25 br_0_25 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c25
+ bl_0_25 br_0_25 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c26
+ bl_0_26 br_0_26 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c26
+ bl_0_26 br_0_26 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c26
+ bl_0_26 br_0_26 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c26
+ bl_0_26 br_0_26 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c26
+ bl_0_26 br_0_26 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c26
+ bl_0_26 br_0_26 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c26
+ bl_0_26 br_0_26 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c26
+ bl_0_26 br_0_26 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c26
+ bl_0_26 br_0_26 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c26
+ bl_0_26 br_0_26 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c26
+ bl_0_26 br_0_26 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c26
+ bl_0_26 br_0_26 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c26
+ bl_0_26 br_0_26 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c26
+ bl_0_26 br_0_26 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c26
+ bl_0_26 br_0_26 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c26
+ bl_0_26 br_0_26 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c26
+ bl_0_26 br_0_26 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c26
+ bl_0_26 br_0_26 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c26
+ bl_0_26 br_0_26 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c26
+ bl_0_26 br_0_26 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c26
+ bl_0_26 br_0_26 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c26
+ bl_0_26 br_0_26 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c26
+ bl_0_26 br_0_26 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c26
+ bl_0_26 br_0_26 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c26
+ bl_0_26 br_0_26 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c26
+ bl_0_26 br_0_26 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c26
+ bl_0_26 br_0_26 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c26
+ bl_0_26 br_0_26 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c26
+ bl_0_26 br_0_26 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c26
+ bl_0_26 br_0_26 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c26
+ bl_0_26 br_0_26 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c26
+ bl_0_26 br_0_26 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c26
+ bl_0_26 br_0_26 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c26
+ bl_0_26 br_0_26 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c26
+ bl_0_26 br_0_26 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c26
+ bl_0_26 br_0_26 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c26
+ bl_0_26 br_0_26 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c26
+ bl_0_26 br_0_26 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c26
+ bl_0_26 br_0_26 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c26
+ bl_0_26 br_0_26 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c26
+ bl_0_26 br_0_26 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c26
+ bl_0_26 br_0_26 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c26
+ bl_0_26 br_0_26 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c26
+ bl_0_26 br_0_26 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c26
+ bl_0_26 br_0_26 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c26
+ bl_0_26 br_0_26 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c26
+ bl_0_26 br_0_26 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c26
+ bl_0_26 br_0_26 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c26
+ bl_0_26 br_0_26 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c26
+ bl_0_26 br_0_26 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c26
+ bl_0_26 br_0_26 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c26
+ bl_0_26 br_0_26 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c26
+ bl_0_26 br_0_26 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c26
+ bl_0_26 br_0_26 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c26
+ bl_0_26 br_0_26 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c26
+ bl_0_26 br_0_26 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c26
+ bl_0_26 br_0_26 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c26
+ bl_0_26 br_0_26 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c26
+ bl_0_26 br_0_26 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c26
+ bl_0_26 br_0_26 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c26
+ bl_0_26 br_0_26 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c26
+ bl_0_26 br_0_26 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c26
+ bl_0_26 br_0_26 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c26
+ bl_0_26 br_0_26 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c26
+ bl_0_26 br_0_26 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c26
+ bl_0_26 br_0_26 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c26
+ bl_0_26 br_0_26 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c26
+ bl_0_26 br_0_26 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c26
+ bl_0_26 br_0_26 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c26
+ bl_0_26 br_0_26 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c26
+ bl_0_26 br_0_26 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c26
+ bl_0_26 br_0_26 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c26
+ bl_0_26 br_0_26 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c26
+ bl_0_26 br_0_26 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c26
+ bl_0_26 br_0_26 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c26
+ bl_0_26 br_0_26 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c26
+ bl_0_26 br_0_26 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c26
+ bl_0_26 br_0_26 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c26
+ bl_0_26 br_0_26 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c26
+ bl_0_26 br_0_26 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c26
+ bl_0_26 br_0_26 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c26
+ bl_0_26 br_0_26 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c26
+ bl_0_26 br_0_26 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c26
+ bl_0_26 br_0_26 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c26
+ bl_0_26 br_0_26 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c26
+ bl_0_26 br_0_26 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c26
+ bl_0_26 br_0_26 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c26
+ bl_0_26 br_0_26 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c26
+ bl_0_26 br_0_26 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c26
+ bl_0_26 br_0_26 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c26
+ bl_0_26 br_0_26 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c26
+ bl_0_26 br_0_26 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c26
+ bl_0_26 br_0_26 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c26
+ bl_0_26 br_0_26 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c26
+ bl_0_26 br_0_26 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c26
+ bl_0_26 br_0_26 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c26
+ bl_0_26 br_0_26 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c26
+ bl_0_26 br_0_26 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c26
+ bl_0_26 br_0_26 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c26
+ bl_0_26 br_0_26 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c26
+ bl_0_26 br_0_26 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c26
+ bl_0_26 br_0_26 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c26
+ bl_0_26 br_0_26 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c26
+ bl_0_26 br_0_26 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c26
+ bl_0_26 br_0_26 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c26
+ bl_0_26 br_0_26 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c26
+ bl_0_26 br_0_26 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c26
+ bl_0_26 br_0_26 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c26
+ bl_0_26 br_0_26 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c26
+ bl_0_26 br_0_26 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c26
+ bl_0_26 br_0_26 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c26
+ bl_0_26 br_0_26 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c26
+ bl_0_26 br_0_26 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c26
+ bl_0_26 br_0_26 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c26
+ bl_0_26 br_0_26 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c26
+ bl_0_26 br_0_26 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c26
+ bl_0_26 br_0_26 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c26
+ bl_0_26 br_0_26 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c26
+ bl_0_26 br_0_26 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c26
+ bl_0_26 br_0_26 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c26
+ bl_0_26 br_0_26 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c26
+ bl_0_26 br_0_26 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c26
+ bl_0_26 br_0_26 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c26
+ bl_0_26 br_0_26 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c26
+ bl_0_26 br_0_26 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c26
+ bl_0_26 br_0_26 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c26
+ bl_0_26 br_0_26 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c26
+ bl_0_26 br_0_26 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c26
+ bl_0_26 br_0_26 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c26
+ bl_0_26 br_0_26 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c26
+ bl_0_26 br_0_26 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c26
+ bl_0_26 br_0_26 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c26
+ bl_0_26 br_0_26 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c26
+ bl_0_26 br_0_26 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c26
+ bl_0_26 br_0_26 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c26
+ bl_0_26 br_0_26 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c26
+ bl_0_26 br_0_26 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c26
+ bl_0_26 br_0_26 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c26
+ bl_0_26 br_0_26 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c26
+ bl_0_26 br_0_26 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c26
+ bl_0_26 br_0_26 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c26
+ bl_0_26 br_0_26 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c26
+ bl_0_26 br_0_26 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c26
+ bl_0_26 br_0_26 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c26
+ bl_0_26 br_0_26 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c26
+ bl_0_26 br_0_26 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c26
+ bl_0_26 br_0_26 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c26
+ bl_0_26 br_0_26 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c26
+ bl_0_26 br_0_26 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c26
+ bl_0_26 br_0_26 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c26
+ bl_0_26 br_0_26 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c26
+ bl_0_26 br_0_26 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c26
+ bl_0_26 br_0_26 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c26
+ bl_0_26 br_0_26 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c26
+ bl_0_26 br_0_26 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c26
+ bl_0_26 br_0_26 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c26
+ bl_0_26 br_0_26 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c26
+ bl_0_26 br_0_26 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c26
+ bl_0_26 br_0_26 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c26
+ bl_0_26 br_0_26 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c26
+ bl_0_26 br_0_26 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c26
+ bl_0_26 br_0_26 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c26
+ bl_0_26 br_0_26 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c26
+ bl_0_26 br_0_26 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c26
+ bl_0_26 br_0_26 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c26
+ bl_0_26 br_0_26 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c26
+ bl_0_26 br_0_26 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c26
+ bl_0_26 br_0_26 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c26
+ bl_0_26 br_0_26 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c26
+ bl_0_26 br_0_26 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c26
+ bl_0_26 br_0_26 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c26
+ bl_0_26 br_0_26 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c26
+ bl_0_26 br_0_26 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c26
+ bl_0_26 br_0_26 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c26
+ bl_0_26 br_0_26 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c26
+ bl_0_26 br_0_26 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c26
+ bl_0_26 br_0_26 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c26
+ bl_0_26 br_0_26 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c26
+ bl_0_26 br_0_26 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c26
+ bl_0_26 br_0_26 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c26
+ bl_0_26 br_0_26 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c26
+ bl_0_26 br_0_26 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c26
+ bl_0_26 br_0_26 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c26
+ bl_0_26 br_0_26 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c26
+ bl_0_26 br_0_26 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c26
+ bl_0_26 br_0_26 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c26
+ bl_0_26 br_0_26 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c26
+ bl_0_26 br_0_26 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c26
+ bl_0_26 br_0_26 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c26
+ bl_0_26 br_0_26 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c26
+ bl_0_26 br_0_26 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c26
+ bl_0_26 br_0_26 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c26
+ bl_0_26 br_0_26 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c26
+ bl_0_26 br_0_26 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c26
+ bl_0_26 br_0_26 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c26
+ bl_0_26 br_0_26 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c26
+ bl_0_26 br_0_26 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c26
+ bl_0_26 br_0_26 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c26
+ bl_0_26 br_0_26 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c26
+ bl_0_26 br_0_26 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c26
+ bl_0_26 br_0_26 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c26
+ bl_0_26 br_0_26 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c26
+ bl_0_26 br_0_26 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c26
+ bl_0_26 br_0_26 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c26
+ bl_0_26 br_0_26 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c26
+ bl_0_26 br_0_26 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c26
+ bl_0_26 br_0_26 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c26
+ bl_0_26 br_0_26 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c26
+ bl_0_26 br_0_26 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c26
+ bl_0_26 br_0_26 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c26
+ bl_0_26 br_0_26 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c26
+ bl_0_26 br_0_26 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c26
+ bl_0_26 br_0_26 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c26
+ bl_0_26 br_0_26 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c26
+ bl_0_26 br_0_26 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c26
+ bl_0_26 br_0_26 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c26
+ bl_0_26 br_0_26 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c26
+ bl_0_26 br_0_26 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c26
+ bl_0_26 br_0_26 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c26
+ bl_0_26 br_0_26 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c26
+ bl_0_26 br_0_26 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c26
+ bl_0_26 br_0_26 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c26
+ bl_0_26 br_0_26 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c26
+ bl_0_26 br_0_26 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c26
+ bl_0_26 br_0_26 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c26
+ bl_0_26 br_0_26 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c26
+ bl_0_26 br_0_26 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c26
+ bl_0_26 br_0_26 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c26
+ bl_0_26 br_0_26 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c26
+ bl_0_26 br_0_26 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c26
+ bl_0_26 br_0_26 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c26
+ bl_0_26 br_0_26 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c26
+ bl_0_26 br_0_26 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c26
+ bl_0_26 br_0_26 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c26
+ bl_0_26 br_0_26 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c26
+ bl_0_26 br_0_26 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c26
+ bl_0_26 br_0_26 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c26
+ bl_0_26 br_0_26 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c26
+ bl_0_26 br_0_26 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c26
+ bl_0_26 br_0_26 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c26
+ bl_0_26 br_0_26 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c26
+ bl_0_26 br_0_26 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c26
+ bl_0_26 br_0_26 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c26
+ bl_0_26 br_0_26 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c26
+ bl_0_26 br_0_26 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c26
+ bl_0_26 br_0_26 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c26
+ bl_0_26 br_0_26 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c26
+ bl_0_26 br_0_26 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c26
+ bl_0_26 br_0_26 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c26
+ bl_0_26 br_0_26 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c26
+ bl_0_26 br_0_26 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c26
+ bl_0_26 br_0_26 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c26
+ bl_0_26 br_0_26 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c26
+ bl_0_26 br_0_26 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c26
+ bl_0_26 br_0_26 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c26
+ bl_0_26 br_0_26 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c27
+ bl_0_27 br_0_27 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c27
+ bl_0_27 br_0_27 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c27
+ bl_0_27 br_0_27 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c27
+ bl_0_27 br_0_27 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c27
+ bl_0_27 br_0_27 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c27
+ bl_0_27 br_0_27 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c27
+ bl_0_27 br_0_27 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c27
+ bl_0_27 br_0_27 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c27
+ bl_0_27 br_0_27 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c27
+ bl_0_27 br_0_27 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c27
+ bl_0_27 br_0_27 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c27
+ bl_0_27 br_0_27 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c27
+ bl_0_27 br_0_27 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c27
+ bl_0_27 br_0_27 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c27
+ bl_0_27 br_0_27 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c27
+ bl_0_27 br_0_27 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c27
+ bl_0_27 br_0_27 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c27
+ bl_0_27 br_0_27 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c27
+ bl_0_27 br_0_27 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c27
+ bl_0_27 br_0_27 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c27
+ bl_0_27 br_0_27 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c27
+ bl_0_27 br_0_27 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c27
+ bl_0_27 br_0_27 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c27
+ bl_0_27 br_0_27 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c27
+ bl_0_27 br_0_27 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c27
+ bl_0_27 br_0_27 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c27
+ bl_0_27 br_0_27 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c27
+ bl_0_27 br_0_27 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c27
+ bl_0_27 br_0_27 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c27
+ bl_0_27 br_0_27 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c27
+ bl_0_27 br_0_27 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c27
+ bl_0_27 br_0_27 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c27
+ bl_0_27 br_0_27 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c27
+ bl_0_27 br_0_27 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c27
+ bl_0_27 br_0_27 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c27
+ bl_0_27 br_0_27 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c27
+ bl_0_27 br_0_27 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c27
+ bl_0_27 br_0_27 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c27
+ bl_0_27 br_0_27 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c27
+ bl_0_27 br_0_27 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c27
+ bl_0_27 br_0_27 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c27
+ bl_0_27 br_0_27 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c27
+ bl_0_27 br_0_27 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c27
+ bl_0_27 br_0_27 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c27
+ bl_0_27 br_0_27 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c27
+ bl_0_27 br_0_27 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c27
+ bl_0_27 br_0_27 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c27
+ bl_0_27 br_0_27 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c27
+ bl_0_27 br_0_27 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c27
+ bl_0_27 br_0_27 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c27
+ bl_0_27 br_0_27 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c27
+ bl_0_27 br_0_27 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c27
+ bl_0_27 br_0_27 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c27
+ bl_0_27 br_0_27 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c27
+ bl_0_27 br_0_27 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c27
+ bl_0_27 br_0_27 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c27
+ bl_0_27 br_0_27 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c27
+ bl_0_27 br_0_27 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c27
+ bl_0_27 br_0_27 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c27
+ bl_0_27 br_0_27 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c27
+ bl_0_27 br_0_27 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c27
+ bl_0_27 br_0_27 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c27
+ bl_0_27 br_0_27 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c27
+ bl_0_27 br_0_27 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c27
+ bl_0_27 br_0_27 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c27
+ bl_0_27 br_0_27 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c27
+ bl_0_27 br_0_27 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c27
+ bl_0_27 br_0_27 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c27
+ bl_0_27 br_0_27 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c27
+ bl_0_27 br_0_27 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c27
+ bl_0_27 br_0_27 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c27
+ bl_0_27 br_0_27 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c27
+ bl_0_27 br_0_27 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c27
+ bl_0_27 br_0_27 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c27
+ bl_0_27 br_0_27 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c27
+ bl_0_27 br_0_27 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c27
+ bl_0_27 br_0_27 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c27
+ bl_0_27 br_0_27 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c27
+ bl_0_27 br_0_27 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c27
+ bl_0_27 br_0_27 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c27
+ bl_0_27 br_0_27 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c27
+ bl_0_27 br_0_27 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c27
+ bl_0_27 br_0_27 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c27
+ bl_0_27 br_0_27 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c27
+ bl_0_27 br_0_27 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c27
+ bl_0_27 br_0_27 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c27
+ bl_0_27 br_0_27 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c27
+ bl_0_27 br_0_27 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c27
+ bl_0_27 br_0_27 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c27
+ bl_0_27 br_0_27 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c27
+ bl_0_27 br_0_27 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c27
+ bl_0_27 br_0_27 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c27
+ bl_0_27 br_0_27 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c27
+ bl_0_27 br_0_27 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c27
+ bl_0_27 br_0_27 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c27
+ bl_0_27 br_0_27 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c27
+ bl_0_27 br_0_27 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c27
+ bl_0_27 br_0_27 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c27
+ bl_0_27 br_0_27 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c27
+ bl_0_27 br_0_27 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c27
+ bl_0_27 br_0_27 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c27
+ bl_0_27 br_0_27 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c27
+ bl_0_27 br_0_27 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c27
+ bl_0_27 br_0_27 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c27
+ bl_0_27 br_0_27 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c27
+ bl_0_27 br_0_27 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c27
+ bl_0_27 br_0_27 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c27
+ bl_0_27 br_0_27 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c27
+ bl_0_27 br_0_27 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c27
+ bl_0_27 br_0_27 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c27
+ bl_0_27 br_0_27 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c27
+ bl_0_27 br_0_27 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c27
+ bl_0_27 br_0_27 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c27
+ bl_0_27 br_0_27 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c27
+ bl_0_27 br_0_27 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c27
+ bl_0_27 br_0_27 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c27
+ bl_0_27 br_0_27 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c27
+ bl_0_27 br_0_27 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c27
+ bl_0_27 br_0_27 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c27
+ bl_0_27 br_0_27 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c27
+ bl_0_27 br_0_27 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c27
+ bl_0_27 br_0_27 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c27
+ bl_0_27 br_0_27 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c27
+ bl_0_27 br_0_27 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c27
+ bl_0_27 br_0_27 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c27
+ bl_0_27 br_0_27 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c27
+ bl_0_27 br_0_27 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c27
+ bl_0_27 br_0_27 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c27
+ bl_0_27 br_0_27 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c27
+ bl_0_27 br_0_27 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c27
+ bl_0_27 br_0_27 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c27
+ bl_0_27 br_0_27 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c27
+ bl_0_27 br_0_27 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c27
+ bl_0_27 br_0_27 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c27
+ bl_0_27 br_0_27 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c27
+ bl_0_27 br_0_27 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c27
+ bl_0_27 br_0_27 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c27
+ bl_0_27 br_0_27 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c27
+ bl_0_27 br_0_27 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c27
+ bl_0_27 br_0_27 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c27
+ bl_0_27 br_0_27 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c27
+ bl_0_27 br_0_27 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c27
+ bl_0_27 br_0_27 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c27
+ bl_0_27 br_0_27 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c27
+ bl_0_27 br_0_27 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c27
+ bl_0_27 br_0_27 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c27
+ bl_0_27 br_0_27 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c27
+ bl_0_27 br_0_27 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c27
+ bl_0_27 br_0_27 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c27
+ bl_0_27 br_0_27 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c27
+ bl_0_27 br_0_27 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c27
+ bl_0_27 br_0_27 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c27
+ bl_0_27 br_0_27 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c27
+ bl_0_27 br_0_27 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c27
+ bl_0_27 br_0_27 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c27
+ bl_0_27 br_0_27 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c27
+ bl_0_27 br_0_27 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c27
+ bl_0_27 br_0_27 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c27
+ bl_0_27 br_0_27 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c27
+ bl_0_27 br_0_27 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c27
+ bl_0_27 br_0_27 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c27
+ bl_0_27 br_0_27 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c27
+ bl_0_27 br_0_27 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c27
+ bl_0_27 br_0_27 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c27
+ bl_0_27 br_0_27 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c27
+ bl_0_27 br_0_27 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c27
+ bl_0_27 br_0_27 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c27
+ bl_0_27 br_0_27 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c27
+ bl_0_27 br_0_27 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c27
+ bl_0_27 br_0_27 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c27
+ bl_0_27 br_0_27 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c27
+ bl_0_27 br_0_27 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c27
+ bl_0_27 br_0_27 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c27
+ bl_0_27 br_0_27 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c27
+ bl_0_27 br_0_27 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c27
+ bl_0_27 br_0_27 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c27
+ bl_0_27 br_0_27 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c27
+ bl_0_27 br_0_27 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c27
+ bl_0_27 br_0_27 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c27
+ bl_0_27 br_0_27 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c27
+ bl_0_27 br_0_27 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c27
+ bl_0_27 br_0_27 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c27
+ bl_0_27 br_0_27 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c27
+ bl_0_27 br_0_27 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c27
+ bl_0_27 br_0_27 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c27
+ bl_0_27 br_0_27 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c27
+ bl_0_27 br_0_27 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c27
+ bl_0_27 br_0_27 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c27
+ bl_0_27 br_0_27 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c27
+ bl_0_27 br_0_27 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c27
+ bl_0_27 br_0_27 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c27
+ bl_0_27 br_0_27 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c27
+ bl_0_27 br_0_27 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c27
+ bl_0_27 br_0_27 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c27
+ bl_0_27 br_0_27 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c27
+ bl_0_27 br_0_27 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c27
+ bl_0_27 br_0_27 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c27
+ bl_0_27 br_0_27 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c27
+ bl_0_27 br_0_27 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c27
+ bl_0_27 br_0_27 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c27
+ bl_0_27 br_0_27 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c27
+ bl_0_27 br_0_27 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c27
+ bl_0_27 br_0_27 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c27
+ bl_0_27 br_0_27 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c27
+ bl_0_27 br_0_27 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c27
+ bl_0_27 br_0_27 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c27
+ bl_0_27 br_0_27 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c27
+ bl_0_27 br_0_27 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c27
+ bl_0_27 br_0_27 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c27
+ bl_0_27 br_0_27 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c27
+ bl_0_27 br_0_27 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c27
+ bl_0_27 br_0_27 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c27
+ bl_0_27 br_0_27 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c27
+ bl_0_27 br_0_27 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c27
+ bl_0_27 br_0_27 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c27
+ bl_0_27 br_0_27 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c27
+ bl_0_27 br_0_27 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c27
+ bl_0_27 br_0_27 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c27
+ bl_0_27 br_0_27 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c27
+ bl_0_27 br_0_27 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c27
+ bl_0_27 br_0_27 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c27
+ bl_0_27 br_0_27 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c27
+ bl_0_27 br_0_27 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c27
+ bl_0_27 br_0_27 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c27
+ bl_0_27 br_0_27 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c27
+ bl_0_27 br_0_27 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c27
+ bl_0_27 br_0_27 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c27
+ bl_0_27 br_0_27 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c27
+ bl_0_27 br_0_27 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c27
+ bl_0_27 br_0_27 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c27
+ bl_0_27 br_0_27 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c27
+ bl_0_27 br_0_27 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c27
+ bl_0_27 br_0_27 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c27
+ bl_0_27 br_0_27 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c27
+ bl_0_27 br_0_27 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c27
+ bl_0_27 br_0_27 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c27
+ bl_0_27 br_0_27 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c27
+ bl_0_27 br_0_27 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c27
+ bl_0_27 br_0_27 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c27
+ bl_0_27 br_0_27 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c27
+ bl_0_27 br_0_27 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c27
+ bl_0_27 br_0_27 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c27
+ bl_0_27 br_0_27 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c27
+ bl_0_27 br_0_27 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c27
+ bl_0_27 br_0_27 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c27
+ bl_0_27 br_0_27 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c27
+ bl_0_27 br_0_27 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c27
+ bl_0_27 br_0_27 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c27
+ bl_0_27 br_0_27 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c27
+ bl_0_27 br_0_27 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c27
+ bl_0_27 br_0_27 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c27
+ bl_0_27 br_0_27 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c27
+ bl_0_27 br_0_27 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c27
+ bl_0_27 br_0_27 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c27
+ bl_0_27 br_0_27 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c27
+ bl_0_27 br_0_27 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c28
+ bl_0_28 br_0_28 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c28
+ bl_0_28 br_0_28 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c28
+ bl_0_28 br_0_28 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c28
+ bl_0_28 br_0_28 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c28
+ bl_0_28 br_0_28 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c28
+ bl_0_28 br_0_28 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c28
+ bl_0_28 br_0_28 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c28
+ bl_0_28 br_0_28 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c28
+ bl_0_28 br_0_28 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c28
+ bl_0_28 br_0_28 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c28
+ bl_0_28 br_0_28 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c28
+ bl_0_28 br_0_28 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c28
+ bl_0_28 br_0_28 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c28
+ bl_0_28 br_0_28 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c28
+ bl_0_28 br_0_28 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c28
+ bl_0_28 br_0_28 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c28
+ bl_0_28 br_0_28 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c28
+ bl_0_28 br_0_28 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c28
+ bl_0_28 br_0_28 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c28
+ bl_0_28 br_0_28 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c28
+ bl_0_28 br_0_28 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c28
+ bl_0_28 br_0_28 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c28
+ bl_0_28 br_0_28 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c28
+ bl_0_28 br_0_28 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c28
+ bl_0_28 br_0_28 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c28
+ bl_0_28 br_0_28 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c28
+ bl_0_28 br_0_28 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c28
+ bl_0_28 br_0_28 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c28
+ bl_0_28 br_0_28 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c28
+ bl_0_28 br_0_28 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c28
+ bl_0_28 br_0_28 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c28
+ bl_0_28 br_0_28 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c28
+ bl_0_28 br_0_28 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c28
+ bl_0_28 br_0_28 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c28
+ bl_0_28 br_0_28 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c28
+ bl_0_28 br_0_28 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c28
+ bl_0_28 br_0_28 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c28
+ bl_0_28 br_0_28 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c28
+ bl_0_28 br_0_28 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c28
+ bl_0_28 br_0_28 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c28
+ bl_0_28 br_0_28 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c28
+ bl_0_28 br_0_28 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c28
+ bl_0_28 br_0_28 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c28
+ bl_0_28 br_0_28 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c28
+ bl_0_28 br_0_28 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c28
+ bl_0_28 br_0_28 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c28
+ bl_0_28 br_0_28 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c28
+ bl_0_28 br_0_28 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c28
+ bl_0_28 br_0_28 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c28
+ bl_0_28 br_0_28 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c28
+ bl_0_28 br_0_28 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c28
+ bl_0_28 br_0_28 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c28
+ bl_0_28 br_0_28 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c28
+ bl_0_28 br_0_28 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c28
+ bl_0_28 br_0_28 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c28
+ bl_0_28 br_0_28 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c28
+ bl_0_28 br_0_28 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c28
+ bl_0_28 br_0_28 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c28
+ bl_0_28 br_0_28 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c28
+ bl_0_28 br_0_28 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c28
+ bl_0_28 br_0_28 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c28
+ bl_0_28 br_0_28 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c28
+ bl_0_28 br_0_28 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c28
+ bl_0_28 br_0_28 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c28
+ bl_0_28 br_0_28 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c28
+ bl_0_28 br_0_28 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c28
+ bl_0_28 br_0_28 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c28
+ bl_0_28 br_0_28 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c28
+ bl_0_28 br_0_28 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c28
+ bl_0_28 br_0_28 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c28
+ bl_0_28 br_0_28 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c28
+ bl_0_28 br_0_28 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c28
+ bl_0_28 br_0_28 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c28
+ bl_0_28 br_0_28 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c28
+ bl_0_28 br_0_28 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c28
+ bl_0_28 br_0_28 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c28
+ bl_0_28 br_0_28 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c28
+ bl_0_28 br_0_28 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c28
+ bl_0_28 br_0_28 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c28
+ bl_0_28 br_0_28 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c28
+ bl_0_28 br_0_28 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c28
+ bl_0_28 br_0_28 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c28
+ bl_0_28 br_0_28 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c28
+ bl_0_28 br_0_28 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c28
+ bl_0_28 br_0_28 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c28
+ bl_0_28 br_0_28 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c28
+ bl_0_28 br_0_28 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c28
+ bl_0_28 br_0_28 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c28
+ bl_0_28 br_0_28 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c28
+ bl_0_28 br_0_28 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c28
+ bl_0_28 br_0_28 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c28
+ bl_0_28 br_0_28 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c28
+ bl_0_28 br_0_28 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c28
+ bl_0_28 br_0_28 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c28
+ bl_0_28 br_0_28 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c28
+ bl_0_28 br_0_28 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c28
+ bl_0_28 br_0_28 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c28
+ bl_0_28 br_0_28 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c28
+ bl_0_28 br_0_28 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c28
+ bl_0_28 br_0_28 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c28
+ bl_0_28 br_0_28 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c28
+ bl_0_28 br_0_28 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c28
+ bl_0_28 br_0_28 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c28
+ bl_0_28 br_0_28 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c28
+ bl_0_28 br_0_28 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c28
+ bl_0_28 br_0_28 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c28
+ bl_0_28 br_0_28 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c28
+ bl_0_28 br_0_28 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c28
+ bl_0_28 br_0_28 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c28
+ bl_0_28 br_0_28 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c28
+ bl_0_28 br_0_28 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c28
+ bl_0_28 br_0_28 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c28
+ bl_0_28 br_0_28 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c28
+ bl_0_28 br_0_28 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c28
+ bl_0_28 br_0_28 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c28
+ bl_0_28 br_0_28 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c28
+ bl_0_28 br_0_28 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c28
+ bl_0_28 br_0_28 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c28
+ bl_0_28 br_0_28 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c28
+ bl_0_28 br_0_28 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c28
+ bl_0_28 br_0_28 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c28
+ bl_0_28 br_0_28 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c28
+ bl_0_28 br_0_28 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c28
+ bl_0_28 br_0_28 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c28
+ bl_0_28 br_0_28 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c28
+ bl_0_28 br_0_28 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c28
+ bl_0_28 br_0_28 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c28
+ bl_0_28 br_0_28 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c28
+ bl_0_28 br_0_28 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c28
+ bl_0_28 br_0_28 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c28
+ bl_0_28 br_0_28 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c28
+ bl_0_28 br_0_28 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c28
+ bl_0_28 br_0_28 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c28
+ bl_0_28 br_0_28 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c28
+ bl_0_28 br_0_28 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c28
+ bl_0_28 br_0_28 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c28
+ bl_0_28 br_0_28 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c28
+ bl_0_28 br_0_28 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c28
+ bl_0_28 br_0_28 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c28
+ bl_0_28 br_0_28 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c28
+ bl_0_28 br_0_28 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c28
+ bl_0_28 br_0_28 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c28
+ bl_0_28 br_0_28 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c28
+ bl_0_28 br_0_28 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c28
+ bl_0_28 br_0_28 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c28
+ bl_0_28 br_0_28 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c28
+ bl_0_28 br_0_28 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c28
+ bl_0_28 br_0_28 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c28
+ bl_0_28 br_0_28 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c28
+ bl_0_28 br_0_28 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c28
+ bl_0_28 br_0_28 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c28
+ bl_0_28 br_0_28 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c28
+ bl_0_28 br_0_28 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c28
+ bl_0_28 br_0_28 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c28
+ bl_0_28 br_0_28 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c28
+ bl_0_28 br_0_28 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c28
+ bl_0_28 br_0_28 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c28
+ bl_0_28 br_0_28 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c28
+ bl_0_28 br_0_28 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c28
+ bl_0_28 br_0_28 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c28
+ bl_0_28 br_0_28 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c28
+ bl_0_28 br_0_28 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c28
+ bl_0_28 br_0_28 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c28
+ bl_0_28 br_0_28 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c28
+ bl_0_28 br_0_28 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c28
+ bl_0_28 br_0_28 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c28
+ bl_0_28 br_0_28 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c28
+ bl_0_28 br_0_28 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c28
+ bl_0_28 br_0_28 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c28
+ bl_0_28 br_0_28 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c28
+ bl_0_28 br_0_28 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c28
+ bl_0_28 br_0_28 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c28
+ bl_0_28 br_0_28 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c28
+ bl_0_28 br_0_28 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c28
+ bl_0_28 br_0_28 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c28
+ bl_0_28 br_0_28 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c28
+ bl_0_28 br_0_28 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c28
+ bl_0_28 br_0_28 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c28
+ bl_0_28 br_0_28 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c28
+ bl_0_28 br_0_28 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c28
+ bl_0_28 br_0_28 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c28
+ bl_0_28 br_0_28 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c28
+ bl_0_28 br_0_28 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c28
+ bl_0_28 br_0_28 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c28
+ bl_0_28 br_0_28 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c28
+ bl_0_28 br_0_28 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c28
+ bl_0_28 br_0_28 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c28
+ bl_0_28 br_0_28 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c28
+ bl_0_28 br_0_28 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c28
+ bl_0_28 br_0_28 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c28
+ bl_0_28 br_0_28 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c28
+ bl_0_28 br_0_28 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c28
+ bl_0_28 br_0_28 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c28
+ bl_0_28 br_0_28 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c28
+ bl_0_28 br_0_28 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c28
+ bl_0_28 br_0_28 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c28
+ bl_0_28 br_0_28 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c28
+ bl_0_28 br_0_28 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c28
+ bl_0_28 br_0_28 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c28
+ bl_0_28 br_0_28 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c28
+ bl_0_28 br_0_28 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c28
+ bl_0_28 br_0_28 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c28
+ bl_0_28 br_0_28 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c28
+ bl_0_28 br_0_28 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c28
+ bl_0_28 br_0_28 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c28
+ bl_0_28 br_0_28 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c28
+ bl_0_28 br_0_28 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c28
+ bl_0_28 br_0_28 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c28
+ bl_0_28 br_0_28 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c28
+ bl_0_28 br_0_28 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c28
+ bl_0_28 br_0_28 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c28
+ bl_0_28 br_0_28 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c28
+ bl_0_28 br_0_28 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c28
+ bl_0_28 br_0_28 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c28
+ bl_0_28 br_0_28 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c28
+ bl_0_28 br_0_28 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c28
+ bl_0_28 br_0_28 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c28
+ bl_0_28 br_0_28 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c28
+ bl_0_28 br_0_28 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c28
+ bl_0_28 br_0_28 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c28
+ bl_0_28 br_0_28 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c28
+ bl_0_28 br_0_28 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c28
+ bl_0_28 br_0_28 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c28
+ bl_0_28 br_0_28 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c28
+ bl_0_28 br_0_28 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c28
+ bl_0_28 br_0_28 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c28
+ bl_0_28 br_0_28 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c28
+ bl_0_28 br_0_28 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c28
+ bl_0_28 br_0_28 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c28
+ bl_0_28 br_0_28 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c28
+ bl_0_28 br_0_28 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c28
+ bl_0_28 br_0_28 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c28
+ bl_0_28 br_0_28 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c28
+ bl_0_28 br_0_28 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c28
+ bl_0_28 br_0_28 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c28
+ bl_0_28 br_0_28 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c28
+ bl_0_28 br_0_28 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c28
+ bl_0_28 br_0_28 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c28
+ bl_0_28 br_0_28 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c28
+ bl_0_28 br_0_28 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c28
+ bl_0_28 br_0_28 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c28
+ bl_0_28 br_0_28 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c28
+ bl_0_28 br_0_28 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c28
+ bl_0_28 br_0_28 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c28
+ bl_0_28 br_0_28 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c28
+ bl_0_28 br_0_28 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c28
+ bl_0_28 br_0_28 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c28
+ bl_0_28 br_0_28 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c28
+ bl_0_28 br_0_28 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c28
+ bl_0_28 br_0_28 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c28
+ bl_0_28 br_0_28 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c28
+ bl_0_28 br_0_28 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c28
+ bl_0_28 br_0_28 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c28
+ bl_0_28 br_0_28 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c28
+ bl_0_28 br_0_28 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c28
+ bl_0_28 br_0_28 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c29
+ bl_0_29 br_0_29 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c29
+ bl_0_29 br_0_29 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c29
+ bl_0_29 br_0_29 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c29
+ bl_0_29 br_0_29 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c29
+ bl_0_29 br_0_29 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c29
+ bl_0_29 br_0_29 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c29
+ bl_0_29 br_0_29 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c29
+ bl_0_29 br_0_29 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c29
+ bl_0_29 br_0_29 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c29
+ bl_0_29 br_0_29 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c29
+ bl_0_29 br_0_29 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c29
+ bl_0_29 br_0_29 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c29
+ bl_0_29 br_0_29 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c29
+ bl_0_29 br_0_29 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c29
+ bl_0_29 br_0_29 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c29
+ bl_0_29 br_0_29 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c29
+ bl_0_29 br_0_29 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c29
+ bl_0_29 br_0_29 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c29
+ bl_0_29 br_0_29 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c29
+ bl_0_29 br_0_29 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c29
+ bl_0_29 br_0_29 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c29
+ bl_0_29 br_0_29 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c29
+ bl_0_29 br_0_29 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c29
+ bl_0_29 br_0_29 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c29
+ bl_0_29 br_0_29 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c29
+ bl_0_29 br_0_29 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c29
+ bl_0_29 br_0_29 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c29
+ bl_0_29 br_0_29 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c29
+ bl_0_29 br_0_29 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c29
+ bl_0_29 br_0_29 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c29
+ bl_0_29 br_0_29 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c29
+ bl_0_29 br_0_29 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c29
+ bl_0_29 br_0_29 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c29
+ bl_0_29 br_0_29 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c29
+ bl_0_29 br_0_29 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c29
+ bl_0_29 br_0_29 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c29
+ bl_0_29 br_0_29 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c29
+ bl_0_29 br_0_29 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c29
+ bl_0_29 br_0_29 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c29
+ bl_0_29 br_0_29 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c29
+ bl_0_29 br_0_29 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c29
+ bl_0_29 br_0_29 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c29
+ bl_0_29 br_0_29 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c29
+ bl_0_29 br_0_29 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c29
+ bl_0_29 br_0_29 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c29
+ bl_0_29 br_0_29 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c29
+ bl_0_29 br_0_29 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c29
+ bl_0_29 br_0_29 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c29
+ bl_0_29 br_0_29 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c29
+ bl_0_29 br_0_29 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c29
+ bl_0_29 br_0_29 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c29
+ bl_0_29 br_0_29 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c29
+ bl_0_29 br_0_29 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c29
+ bl_0_29 br_0_29 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c29
+ bl_0_29 br_0_29 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c29
+ bl_0_29 br_0_29 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c29
+ bl_0_29 br_0_29 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c29
+ bl_0_29 br_0_29 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c29
+ bl_0_29 br_0_29 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c29
+ bl_0_29 br_0_29 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c29
+ bl_0_29 br_0_29 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c29
+ bl_0_29 br_0_29 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c29
+ bl_0_29 br_0_29 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c29
+ bl_0_29 br_0_29 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c29
+ bl_0_29 br_0_29 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c29
+ bl_0_29 br_0_29 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c29
+ bl_0_29 br_0_29 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c29
+ bl_0_29 br_0_29 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c29
+ bl_0_29 br_0_29 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c29
+ bl_0_29 br_0_29 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c29
+ bl_0_29 br_0_29 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c29
+ bl_0_29 br_0_29 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c29
+ bl_0_29 br_0_29 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c29
+ bl_0_29 br_0_29 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c29
+ bl_0_29 br_0_29 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c29
+ bl_0_29 br_0_29 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c29
+ bl_0_29 br_0_29 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c29
+ bl_0_29 br_0_29 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c29
+ bl_0_29 br_0_29 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c29
+ bl_0_29 br_0_29 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c29
+ bl_0_29 br_0_29 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c29
+ bl_0_29 br_0_29 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c29
+ bl_0_29 br_0_29 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c29
+ bl_0_29 br_0_29 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c29
+ bl_0_29 br_0_29 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c29
+ bl_0_29 br_0_29 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c29
+ bl_0_29 br_0_29 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c29
+ bl_0_29 br_0_29 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c29
+ bl_0_29 br_0_29 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c29
+ bl_0_29 br_0_29 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c29
+ bl_0_29 br_0_29 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c29
+ bl_0_29 br_0_29 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c29
+ bl_0_29 br_0_29 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c29
+ bl_0_29 br_0_29 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c29
+ bl_0_29 br_0_29 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c29
+ bl_0_29 br_0_29 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c29
+ bl_0_29 br_0_29 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c29
+ bl_0_29 br_0_29 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c29
+ bl_0_29 br_0_29 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c29
+ bl_0_29 br_0_29 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c29
+ bl_0_29 br_0_29 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c29
+ bl_0_29 br_0_29 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c29
+ bl_0_29 br_0_29 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c29
+ bl_0_29 br_0_29 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c29
+ bl_0_29 br_0_29 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c29
+ bl_0_29 br_0_29 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c29
+ bl_0_29 br_0_29 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c29
+ bl_0_29 br_0_29 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c29
+ bl_0_29 br_0_29 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c29
+ bl_0_29 br_0_29 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c29
+ bl_0_29 br_0_29 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c29
+ bl_0_29 br_0_29 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c29
+ bl_0_29 br_0_29 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c29
+ bl_0_29 br_0_29 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c29
+ bl_0_29 br_0_29 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c29
+ bl_0_29 br_0_29 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c29
+ bl_0_29 br_0_29 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c29
+ bl_0_29 br_0_29 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c29
+ bl_0_29 br_0_29 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c29
+ bl_0_29 br_0_29 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c29
+ bl_0_29 br_0_29 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c29
+ bl_0_29 br_0_29 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c29
+ bl_0_29 br_0_29 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c29
+ bl_0_29 br_0_29 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c29
+ bl_0_29 br_0_29 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c29
+ bl_0_29 br_0_29 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c29
+ bl_0_29 br_0_29 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c29
+ bl_0_29 br_0_29 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c29
+ bl_0_29 br_0_29 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c29
+ bl_0_29 br_0_29 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c29
+ bl_0_29 br_0_29 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c29
+ bl_0_29 br_0_29 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c29
+ bl_0_29 br_0_29 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c29
+ bl_0_29 br_0_29 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c29
+ bl_0_29 br_0_29 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c29
+ bl_0_29 br_0_29 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c29
+ bl_0_29 br_0_29 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c29
+ bl_0_29 br_0_29 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c29
+ bl_0_29 br_0_29 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c29
+ bl_0_29 br_0_29 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c29
+ bl_0_29 br_0_29 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c29
+ bl_0_29 br_0_29 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c29
+ bl_0_29 br_0_29 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c29
+ bl_0_29 br_0_29 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c29
+ bl_0_29 br_0_29 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c29
+ bl_0_29 br_0_29 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c29
+ bl_0_29 br_0_29 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c29
+ bl_0_29 br_0_29 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c29
+ bl_0_29 br_0_29 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c29
+ bl_0_29 br_0_29 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c29
+ bl_0_29 br_0_29 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c29
+ bl_0_29 br_0_29 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c29
+ bl_0_29 br_0_29 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c29
+ bl_0_29 br_0_29 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c29
+ bl_0_29 br_0_29 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c29
+ bl_0_29 br_0_29 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c29
+ bl_0_29 br_0_29 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c29
+ bl_0_29 br_0_29 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c29
+ bl_0_29 br_0_29 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c29
+ bl_0_29 br_0_29 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c29
+ bl_0_29 br_0_29 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c29
+ bl_0_29 br_0_29 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c29
+ bl_0_29 br_0_29 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c29
+ bl_0_29 br_0_29 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c29
+ bl_0_29 br_0_29 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c29
+ bl_0_29 br_0_29 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c29
+ bl_0_29 br_0_29 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c29
+ bl_0_29 br_0_29 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c29
+ bl_0_29 br_0_29 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c29
+ bl_0_29 br_0_29 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c29
+ bl_0_29 br_0_29 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c29
+ bl_0_29 br_0_29 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c29
+ bl_0_29 br_0_29 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c29
+ bl_0_29 br_0_29 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c29
+ bl_0_29 br_0_29 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c29
+ bl_0_29 br_0_29 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c29
+ bl_0_29 br_0_29 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c29
+ bl_0_29 br_0_29 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c29
+ bl_0_29 br_0_29 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c29
+ bl_0_29 br_0_29 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c29
+ bl_0_29 br_0_29 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c29
+ bl_0_29 br_0_29 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c29
+ bl_0_29 br_0_29 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c29
+ bl_0_29 br_0_29 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c29
+ bl_0_29 br_0_29 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c29
+ bl_0_29 br_0_29 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c29
+ bl_0_29 br_0_29 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c29
+ bl_0_29 br_0_29 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c29
+ bl_0_29 br_0_29 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c29
+ bl_0_29 br_0_29 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c29
+ bl_0_29 br_0_29 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c29
+ bl_0_29 br_0_29 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c29
+ bl_0_29 br_0_29 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c29
+ bl_0_29 br_0_29 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c29
+ bl_0_29 br_0_29 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c29
+ bl_0_29 br_0_29 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c29
+ bl_0_29 br_0_29 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c29
+ bl_0_29 br_0_29 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c29
+ bl_0_29 br_0_29 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c29
+ bl_0_29 br_0_29 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c29
+ bl_0_29 br_0_29 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c29
+ bl_0_29 br_0_29 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c29
+ bl_0_29 br_0_29 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c29
+ bl_0_29 br_0_29 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c29
+ bl_0_29 br_0_29 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c29
+ bl_0_29 br_0_29 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c29
+ bl_0_29 br_0_29 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c29
+ bl_0_29 br_0_29 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c29
+ bl_0_29 br_0_29 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c29
+ bl_0_29 br_0_29 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c29
+ bl_0_29 br_0_29 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c29
+ bl_0_29 br_0_29 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c29
+ bl_0_29 br_0_29 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c29
+ bl_0_29 br_0_29 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c29
+ bl_0_29 br_0_29 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c29
+ bl_0_29 br_0_29 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c29
+ bl_0_29 br_0_29 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c29
+ bl_0_29 br_0_29 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c29
+ bl_0_29 br_0_29 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c29
+ bl_0_29 br_0_29 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c29
+ bl_0_29 br_0_29 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c29
+ bl_0_29 br_0_29 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c29
+ bl_0_29 br_0_29 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c29
+ bl_0_29 br_0_29 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c29
+ bl_0_29 br_0_29 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c29
+ bl_0_29 br_0_29 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c29
+ bl_0_29 br_0_29 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c29
+ bl_0_29 br_0_29 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c29
+ bl_0_29 br_0_29 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c29
+ bl_0_29 br_0_29 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c29
+ bl_0_29 br_0_29 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c29
+ bl_0_29 br_0_29 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c29
+ bl_0_29 br_0_29 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c29
+ bl_0_29 br_0_29 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c29
+ bl_0_29 br_0_29 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c29
+ bl_0_29 br_0_29 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c29
+ bl_0_29 br_0_29 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c29
+ bl_0_29 br_0_29 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c29
+ bl_0_29 br_0_29 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c29
+ bl_0_29 br_0_29 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c29
+ bl_0_29 br_0_29 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c29
+ bl_0_29 br_0_29 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c29
+ bl_0_29 br_0_29 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c29
+ bl_0_29 br_0_29 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c29
+ bl_0_29 br_0_29 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c29
+ bl_0_29 br_0_29 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c29
+ bl_0_29 br_0_29 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c29
+ bl_0_29 br_0_29 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c29
+ bl_0_29 br_0_29 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c29
+ bl_0_29 br_0_29 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c29
+ bl_0_29 br_0_29 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c29
+ bl_0_29 br_0_29 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c29
+ bl_0_29 br_0_29 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c29
+ bl_0_29 br_0_29 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c29
+ bl_0_29 br_0_29 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c29
+ bl_0_29 br_0_29 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c30
+ bl_0_30 br_0_30 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c30
+ bl_0_30 br_0_30 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c30
+ bl_0_30 br_0_30 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c30
+ bl_0_30 br_0_30 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c30
+ bl_0_30 br_0_30 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c30
+ bl_0_30 br_0_30 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c30
+ bl_0_30 br_0_30 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c30
+ bl_0_30 br_0_30 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c30
+ bl_0_30 br_0_30 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c30
+ bl_0_30 br_0_30 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c30
+ bl_0_30 br_0_30 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c30
+ bl_0_30 br_0_30 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c30
+ bl_0_30 br_0_30 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c30
+ bl_0_30 br_0_30 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c30
+ bl_0_30 br_0_30 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c30
+ bl_0_30 br_0_30 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c30
+ bl_0_30 br_0_30 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c30
+ bl_0_30 br_0_30 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c30
+ bl_0_30 br_0_30 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c30
+ bl_0_30 br_0_30 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c30
+ bl_0_30 br_0_30 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c30
+ bl_0_30 br_0_30 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c30
+ bl_0_30 br_0_30 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c30
+ bl_0_30 br_0_30 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c30
+ bl_0_30 br_0_30 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c30
+ bl_0_30 br_0_30 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c30
+ bl_0_30 br_0_30 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c30
+ bl_0_30 br_0_30 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c30
+ bl_0_30 br_0_30 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c30
+ bl_0_30 br_0_30 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c30
+ bl_0_30 br_0_30 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c30
+ bl_0_30 br_0_30 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c30
+ bl_0_30 br_0_30 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c30
+ bl_0_30 br_0_30 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c30
+ bl_0_30 br_0_30 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c30
+ bl_0_30 br_0_30 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c30
+ bl_0_30 br_0_30 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c30
+ bl_0_30 br_0_30 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c30
+ bl_0_30 br_0_30 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c30
+ bl_0_30 br_0_30 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c30
+ bl_0_30 br_0_30 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c30
+ bl_0_30 br_0_30 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c30
+ bl_0_30 br_0_30 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c30
+ bl_0_30 br_0_30 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c30
+ bl_0_30 br_0_30 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c30
+ bl_0_30 br_0_30 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c30
+ bl_0_30 br_0_30 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c30
+ bl_0_30 br_0_30 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c30
+ bl_0_30 br_0_30 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c30
+ bl_0_30 br_0_30 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c30
+ bl_0_30 br_0_30 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c30
+ bl_0_30 br_0_30 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c30
+ bl_0_30 br_0_30 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c30
+ bl_0_30 br_0_30 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c30
+ bl_0_30 br_0_30 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c30
+ bl_0_30 br_0_30 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c30
+ bl_0_30 br_0_30 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c30
+ bl_0_30 br_0_30 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c30
+ bl_0_30 br_0_30 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c30
+ bl_0_30 br_0_30 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c30
+ bl_0_30 br_0_30 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c30
+ bl_0_30 br_0_30 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c30
+ bl_0_30 br_0_30 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c30
+ bl_0_30 br_0_30 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c30
+ bl_0_30 br_0_30 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c30
+ bl_0_30 br_0_30 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c30
+ bl_0_30 br_0_30 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c30
+ bl_0_30 br_0_30 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c30
+ bl_0_30 br_0_30 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c30
+ bl_0_30 br_0_30 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c30
+ bl_0_30 br_0_30 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c30
+ bl_0_30 br_0_30 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c30
+ bl_0_30 br_0_30 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c30
+ bl_0_30 br_0_30 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c30
+ bl_0_30 br_0_30 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c30
+ bl_0_30 br_0_30 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c30
+ bl_0_30 br_0_30 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c30
+ bl_0_30 br_0_30 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c30
+ bl_0_30 br_0_30 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c30
+ bl_0_30 br_0_30 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c30
+ bl_0_30 br_0_30 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c30
+ bl_0_30 br_0_30 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c30
+ bl_0_30 br_0_30 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c30
+ bl_0_30 br_0_30 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c30
+ bl_0_30 br_0_30 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c30
+ bl_0_30 br_0_30 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c30
+ bl_0_30 br_0_30 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c30
+ bl_0_30 br_0_30 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c30
+ bl_0_30 br_0_30 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c30
+ bl_0_30 br_0_30 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c30
+ bl_0_30 br_0_30 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c30
+ bl_0_30 br_0_30 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c30
+ bl_0_30 br_0_30 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c30
+ bl_0_30 br_0_30 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c30
+ bl_0_30 br_0_30 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c30
+ bl_0_30 br_0_30 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c30
+ bl_0_30 br_0_30 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c30
+ bl_0_30 br_0_30 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c30
+ bl_0_30 br_0_30 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c30
+ bl_0_30 br_0_30 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c30
+ bl_0_30 br_0_30 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c30
+ bl_0_30 br_0_30 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c30
+ bl_0_30 br_0_30 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c30
+ bl_0_30 br_0_30 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c30
+ bl_0_30 br_0_30 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c30
+ bl_0_30 br_0_30 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c30
+ bl_0_30 br_0_30 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c30
+ bl_0_30 br_0_30 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c30
+ bl_0_30 br_0_30 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c30
+ bl_0_30 br_0_30 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c30
+ bl_0_30 br_0_30 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c30
+ bl_0_30 br_0_30 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c30
+ bl_0_30 br_0_30 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c30
+ bl_0_30 br_0_30 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c30
+ bl_0_30 br_0_30 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c30
+ bl_0_30 br_0_30 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c30
+ bl_0_30 br_0_30 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c30
+ bl_0_30 br_0_30 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c30
+ bl_0_30 br_0_30 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c30
+ bl_0_30 br_0_30 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c30
+ bl_0_30 br_0_30 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c30
+ bl_0_30 br_0_30 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c30
+ bl_0_30 br_0_30 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c30
+ bl_0_30 br_0_30 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c30
+ bl_0_30 br_0_30 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c30
+ bl_0_30 br_0_30 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c30
+ bl_0_30 br_0_30 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c30
+ bl_0_30 br_0_30 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c30
+ bl_0_30 br_0_30 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c30
+ bl_0_30 br_0_30 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c30
+ bl_0_30 br_0_30 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c30
+ bl_0_30 br_0_30 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c30
+ bl_0_30 br_0_30 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c30
+ bl_0_30 br_0_30 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c30
+ bl_0_30 br_0_30 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c30
+ bl_0_30 br_0_30 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c30
+ bl_0_30 br_0_30 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c30
+ bl_0_30 br_0_30 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c30
+ bl_0_30 br_0_30 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c30
+ bl_0_30 br_0_30 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c30
+ bl_0_30 br_0_30 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c30
+ bl_0_30 br_0_30 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c30
+ bl_0_30 br_0_30 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c30
+ bl_0_30 br_0_30 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c30
+ bl_0_30 br_0_30 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c30
+ bl_0_30 br_0_30 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c30
+ bl_0_30 br_0_30 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c30
+ bl_0_30 br_0_30 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c30
+ bl_0_30 br_0_30 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c30
+ bl_0_30 br_0_30 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c30
+ bl_0_30 br_0_30 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c30
+ bl_0_30 br_0_30 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c30
+ bl_0_30 br_0_30 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c30
+ bl_0_30 br_0_30 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c30
+ bl_0_30 br_0_30 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c30
+ bl_0_30 br_0_30 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c30
+ bl_0_30 br_0_30 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c30
+ bl_0_30 br_0_30 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c30
+ bl_0_30 br_0_30 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c30
+ bl_0_30 br_0_30 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c30
+ bl_0_30 br_0_30 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c30
+ bl_0_30 br_0_30 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c30
+ bl_0_30 br_0_30 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c30
+ bl_0_30 br_0_30 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c30
+ bl_0_30 br_0_30 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c30
+ bl_0_30 br_0_30 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c30
+ bl_0_30 br_0_30 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c30
+ bl_0_30 br_0_30 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c30
+ bl_0_30 br_0_30 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c30
+ bl_0_30 br_0_30 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c30
+ bl_0_30 br_0_30 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c30
+ bl_0_30 br_0_30 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c30
+ bl_0_30 br_0_30 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c30
+ bl_0_30 br_0_30 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c30
+ bl_0_30 br_0_30 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c30
+ bl_0_30 br_0_30 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c30
+ bl_0_30 br_0_30 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c30
+ bl_0_30 br_0_30 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c30
+ bl_0_30 br_0_30 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c30
+ bl_0_30 br_0_30 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c30
+ bl_0_30 br_0_30 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c30
+ bl_0_30 br_0_30 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c30
+ bl_0_30 br_0_30 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c30
+ bl_0_30 br_0_30 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c30
+ bl_0_30 br_0_30 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c30
+ bl_0_30 br_0_30 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c30
+ bl_0_30 br_0_30 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c30
+ bl_0_30 br_0_30 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c30
+ bl_0_30 br_0_30 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c30
+ bl_0_30 br_0_30 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c30
+ bl_0_30 br_0_30 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c30
+ bl_0_30 br_0_30 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c30
+ bl_0_30 br_0_30 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c30
+ bl_0_30 br_0_30 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c30
+ bl_0_30 br_0_30 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c30
+ bl_0_30 br_0_30 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c30
+ bl_0_30 br_0_30 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c30
+ bl_0_30 br_0_30 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c30
+ bl_0_30 br_0_30 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c30
+ bl_0_30 br_0_30 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c30
+ bl_0_30 br_0_30 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c30
+ bl_0_30 br_0_30 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c30
+ bl_0_30 br_0_30 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c30
+ bl_0_30 br_0_30 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c30
+ bl_0_30 br_0_30 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c30
+ bl_0_30 br_0_30 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c30
+ bl_0_30 br_0_30 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c30
+ bl_0_30 br_0_30 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c30
+ bl_0_30 br_0_30 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c30
+ bl_0_30 br_0_30 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c30
+ bl_0_30 br_0_30 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c30
+ bl_0_30 br_0_30 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c30
+ bl_0_30 br_0_30 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c30
+ bl_0_30 br_0_30 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c30
+ bl_0_30 br_0_30 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c30
+ bl_0_30 br_0_30 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c30
+ bl_0_30 br_0_30 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c30
+ bl_0_30 br_0_30 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c30
+ bl_0_30 br_0_30 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c30
+ bl_0_30 br_0_30 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c30
+ bl_0_30 br_0_30 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c30
+ bl_0_30 br_0_30 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c30
+ bl_0_30 br_0_30 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c30
+ bl_0_30 br_0_30 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c30
+ bl_0_30 br_0_30 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c30
+ bl_0_30 br_0_30 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c30
+ bl_0_30 br_0_30 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c30
+ bl_0_30 br_0_30 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c30
+ bl_0_30 br_0_30 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c30
+ bl_0_30 br_0_30 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c30
+ bl_0_30 br_0_30 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c30
+ bl_0_30 br_0_30 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c30
+ bl_0_30 br_0_30 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c30
+ bl_0_30 br_0_30 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c30
+ bl_0_30 br_0_30 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c30
+ bl_0_30 br_0_30 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c30
+ bl_0_30 br_0_30 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c30
+ bl_0_30 br_0_30 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c30
+ bl_0_30 br_0_30 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c30
+ bl_0_30 br_0_30 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c30
+ bl_0_30 br_0_30 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c30
+ bl_0_30 br_0_30 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c30
+ bl_0_30 br_0_30 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c30
+ bl_0_30 br_0_30 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c30
+ bl_0_30 br_0_30 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c30
+ bl_0_30 br_0_30 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c30
+ bl_0_30 br_0_30 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c30
+ bl_0_30 br_0_30 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c30
+ bl_0_30 br_0_30 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c30
+ bl_0_30 br_0_30 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c30
+ bl_0_30 br_0_30 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c30
+ bl_0_30 br_0_30 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c30
+ bl_0_30 br_0_30 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c30
+ bl_0_30 br_0_30 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c30
+ bl_0_30 br_0_30 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c30
+ bl_0_30 br_0_30 wl_0_255 vdd gnd
+ cell_1rw
Xbit_r0_c31
+ bl_0_31 br_0_31 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c31
+ bl_0_31 br_0_31 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c31
+ bl_0_31 br_0_31 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c31
+ bl_0_31 br_0_31 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c31
+ bl_0_31 br_0_31 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c31
+ bl_0_31 br_0_31 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c31
+ bl_0_31 br_0_31 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c31
+ bl_0_31 br_0_31 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c31
+ bl_0_31 br_0_31 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c31
+ bl_0_31 br_0_31 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c31
+ bl_0_31 br_0_31 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c31
+ bl_0_31 br_0_31 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c31
+ bl_0_31 br_0_31 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c31
+ bl_0_31 br_0_31 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c31
+ bl_0_31 br_0_31 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c31
+ bl_0_31 br_0_31 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c31
+ bl_0_31 br_0_31 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c31
+ bl_0_31 br_0_31 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c31
+ bl_0_31 br_0_31 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c31
+ bl_0_31 br_0_31 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c31
+ bl_0_31 br_0_31 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c31
+ bl_0_31 br_0_31 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c31
+ bl_0_31 br_0_31 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c31
+ bl_0_31 br_0_31 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c31
+ bl_0_31 br_0_31 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c31
+ bl_0_31 br_0_31 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c31
+ bl_0_31 br_0_31 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c31
+ bl_0_31 br_0_31 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c31
+ bl_0_31 br_0_31 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c31
+ bl_0_31 br_0_31 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c31
+ bl_0_31 br_0_31 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c31
+ bl_0_31 br_0_31 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r32_c31
+ bl_0_31 br_0_31 wl_0_32 vdd gnd
+ cell_1rw
Xbit_r33_c31
+ bl_0_31 br_0_31 wl_0_33 vdd gnd
+ cell_1rw
Xbit_r34_c31
+ bl_0_31 br_0_31 wl_0_34 vdd gnd
+ cell_1rw
Xbit_r35_c31
+ bl_0_31 br_0_31 wl_0_35 vdd gnd
+ cell_1rw
Xbit_r36_c31
+ bl_0_31 br_0_31 wl_0_36 vdd gnd
+ cell_1rw
Xbit_r37_c31
+ bl_0_31 br_0_31 wl_0_37 vdd gnd
+ cell_1rw
Xbit_r38_c31
+ bl_0_31 br_0_31 wl_0_38 vdd gnd
+ cell_1rw
Xbit_r39_c31
+ bl_0_31 br_0_31 wl_0_39 vdd gnd
+ cell_1rw
Xbit_r40_c31
+ bl_0_31 br_0_31 wl_0_40 vdd gnd
+ cell_1rw
Xbit_r41_c31
+ bl_0_31 br_0_31 wl_0_41 vdd gnd
+ cell_1rw
Xbit_r42_c31
+ bl_0_31 br_0_31 wl_0_42 vdd gnd
+ cell_1rw
Xbit_r43_c31
+ bl_0_31 br_0_31 wl_0_43 vdd gnd
+ cell_1rw
Xbit_r44_c31
+ bl_0_31 br_0_31 wl_0_44 vdd gnd
+ cell_1rw
Xbit_r45_c31
+ bl_0_31 br_0_31 wl_0_45 vdd gnd
+ cell_1rw
Xbit_r46_c31
+ bl_0_31 br_0_31 wl_0_46 vdd gnd
+ cell_1rw
Xbit_r47_c31
+ bl_0_31 br_0_31 wl_0_47 vdd gnd
+ cell_1rw
Xbit_r48_c31
+ bl_0_31 br_0_31 wl_0_48 vdd gnd
+ cell_1rw
Xbit_r49_c31
+ bl_0_31 br_0_31 wl_0_49 vdd gnd
+ cell_1rw
Xbit_r50_c31
+ bl_0_31 br_0_31 wl_0_50 vdd gnd
+ cell_1rw
Xbit_r51_c31
+ bl_0_31 br_0_31 wl_0_51 vdd gnd
+ cell_1rw
Xbit_r52_c31
+ bl_0_31 br_0_31 wl_0_52 vdd gnd
+ cell_1rw
Xbit_r53_c31
+ bl_0_31 br_0_31 wl_0_53 vdd gnd
+ cell_1rw
Xbit_r54_c31
+ bl_0_31 br_0_31 wl_0_54 vdd gnd
+ cell_1rw
Xbit_r55_c31
+ bl_0_31 br_0_31 wl_0_55 vdd gnd
+ cell_1rw
Xbit_r56_c31
+ bl_0_31 br_0_31 wl_0_56 vdd gnd
+ cell_1rw
Xbit_r57_c31
+ bl_0_31 br_0_31 wl_0_57 vdd gnd
+ cell_1rw
Xbit_r58_c31
+ bl_0_31 br_0_31 wl_0_58 vdd gnd
+ cell_1rw
Xbit_r59_c31
+ bl_0_31 br_0_31 wl_0_59 vdd gnd
+ cell_1rw
Xbit_r60_c31
+ bl_0_31 br_0_31 wl_0_60 vdd gnd
+ cell_1rw
Xbit_r61_c31
+ bl_0_31 br_0_31 wl_0_61 vdd gnd
+ cell_1rw
Xbit_r62_c31
+ bl_0_31 br_0_31 wl_0_62 vdd gnd
+ cell_1rw
Xbit_r63_c31
+ bl_0_31 br_0_31 wl_0_63 vdd gnd
+ cell_1rw
Xbit_r64_c31
+ bl_0_31 br_0_31 wl_0_64 vdd gnd
+ cell_1rw
Xbit_r65_c31
+ bl_0_31 br_0_31 wl_0_65 vdd gnd
+ cell_1rw
Xbit_r66_c31
+ bl_0_31 br_0_31 wl_0_66 vdd gnd
+ cell_1rw
Xbit_r67_c31
+ bl_0_31 br_0_31 wl_0_67 vdd gnd
+ cell_1rw
Xbit_r68_c31
+ bl_0_31 br_0_31 wl_0_68 vdd gnd
+ cell_1rw
Xbit_r69_c31
+ bl_0_31 br_0_31 wl_0_69 vdd gnd
+ cell_1rw
Xbit_r70_c31
+ bl_0_31 br_0_31 wl_0_70 vdd gnd
+ cell_1rw
Xbit_r71_c31
+ bl_0_31 br_0_31 wl_0_71 vdd gnd
+ cell_1rw
Xbit_r72_c31
+ bl_0_31 br_0_31 wl_0_72 vdd gnd
+ cell_1rw
Xbit_r73_c31
+ bl_0_31 br_0_31 wl_0_73 vdd gnd
+ cell_1rw
Xbit_r74_c31
+ bl_0_31 br_0_31 wl_0_74 vdd gnd
+ cell_1rw
Xbit_r75_c31
+ bl_0_31 br_0_31 wl_0_75 vdd gnd
+ cell_1rw
Xbit_r76_c31
+ bl_0_31 br_0_31 wl_0_76 vdd gnd
+ cell_1rw
Xbit_r77_c31
+ bl_0_31 br_0_31 wl_0_77 vdd gnd
+ cell_1rw
Xbit_r78_c31
+ bl_0_31 br_0_31 wl_0_78 vdd gnd
+ cell_1rw
Xbit_r79_c31
+ bl_0_31 br_0_31 wl_0_79 vdd gnd
+ cell_1rw
Xbit_r80_c31
+ bl_0_31 br_0_31 wl_0_80 vdd gnd
+ cell_1rw
Xbit_r81_c31
+ bl_0_31 br_0_31 wl_0_81 vdd gnd
+ cell_1rw
Xbit_r82_c31
+ bl_0_31 br_0_31 wl_0_82 vdd gnd
+ cell_1rw
Xbit_r83_c31
+ bl_0_31 br_0_31 wl_0_83 vdd gnd
+ cell_1rw
Xbit_r84_c31
+ bl_0_31 br_0_31 wl_0_84 vdd gnd
+ cell_1rw
Xbit_r85_c31
+ bl_0_31 br_0_31 wl_0_85 vdd gnd
+ cell_1rw
Xbit_r86_c31
+ bl_0_31 br_0_31 wl_0_86 vdd gnd
+ cell_1rw
Xbit_r87_c31
+ bl_0_31 br_0_31 wl_0_87 vdd gnd
+ cell_1rw
Xbit_r88_c31
+ bl_0_31 br_0_31 wl_0_88 vdd gnd
+ cell_1rw
Xbit_r89_c31
+ bl_0_31 br_0_31 wl_0_89 vdd gnd
+ cell_1rw
Xbit_r90_c31
+ bl_0_31 br_0_31 wl_0_90 vdd gnd
+ cell_1rw
Xbit_r91_c31
+ bl_0_31 br_0_31 wl_0_91 vdd gnd
+ cell_1rw
Xbit_r92_c31
+ bl_0_31 br_0_31 wl_0_92 vdd gnd
+ cell_1rw
Xbit_r93_c31
+ bl_0_31 br_0_31 wl_0_93 vdd gnd
+ cell_1rw
Xbit_r94_c31
+ bl_0_31 br_0_31 wl_0_94 vdd gnd
+ cell_1rw
Xbit_r95_c31
+ bl_0_31 br_0_31 wl_0_95 vdd gnd
+ cell_1rw
Xbit_r96_c31
+ bl_0_31 br_0_31 wl_0_96 vdd gnd
+ cell_1rw
Xbit_r97_c31
+ bl_0_31 br_0_31 wl_0_97 vdd gnd
+ cell_1rw
Xbit_r98_c31
+ bl_0_31 br_0_31 wl_0_98 vdd gnd
+ cell_1rw
Xbit_r99_c31
+ bl_0_31 br_0_31 wl_0_99 vdd gnd
+ cell_1rw
Xbit_r100_c31
+ bl_0_31 br_0_31 wl_0_100 vdd gnd
+ cell_1rw
Xbit_r101_c31
+ bl_0_31 br_0_31 wl_0_101 vdd gnd
+ cell_1rw
Xbit_r102_c31
+ bl_0_31 br_0_31 wl_0_102 vdd gnd
+ cell_1rw
Xbit_r103_c31
+ bl_0_31 br_0_31 wl_0_103 vdd gnd
+ cell_1rw
Xbit_r104_c31
+ bl_0_31 br_0_31 wl_0_104 vdd gnd
+ cell_1rw
Xbit_r105_c31
+ bl_0_31 br_0_31 wl_0_105 vdd gnd
+ cell_1rw
Xbit_r106_c31
+ bl_0_31 br_0_31 wl_0_106 vdd gnd
+ cell_1rw
Xbit_r107_c31
+ bl_0_31 br_0_31 wl_0_107 vdd gnd
+ cell_1rw
Xbit_r108_c31
+ bl_0_31 br_0_31 wl_0_108 vdd gnd
+ cell_1rw
Xbit_r109_c31
+ bl_0_31 br_0_31 wl_0_109 vdd gnd
+ cell_1rw
Xbit_r110_c31
+ bl_0_31 br_0_31 wl_0_110 vdd gnd
+ cell_1rw
Xbit_r111_c31
+ bl_0_31 br_0_31 wl_0_111 vdd gnd
+ cell_1rw
Xbit_r112_c31
+ bl_0_31 br_0_31 wl_0_112 vdd gnd
+ cell_1rw
Xbit_r113_c31
+ bl_0_31 br_0_31 wl_0_113 vdd gnd
+ cell_1rw
Xbit_r114_c31
+ bl_0_31 br_0_31 wl_0_114 vdd gnd
+ cell_1rw
Xbit_r115_c31
+ bl_0_31 br_0_31 wl_0_115 vdd gnd
+ cell_1rw
Xbit_r116_c31
+ bl_0_31 br_0_31 wl_0_116 vdd gnd
+ cell_1rw
Xbit_r117_c31
+ bl_0_31 br_0_31 wl_0_117 vdd gnd
+ cell_1rw
Xbit_r118_c31
+ bl_0_31 br_0_31 wl_0_118 vdd gnd
+ cell_1rw
Xbit_r119_c31
+ bl_0_31 br_0_31 wl_0_119 vdd gnd
+ cell_1rw
Xbit_r120_c31
+ bl_0_31 br_0_31 wl_0_120 vdd gnd
+ cell_1rw
Xbit_r121_c31
+ bl_0_31 br_0_31 wl_0_121 vdd gnd
+ cell_1rw
Xbit_r122_c31
+ bl_0_31 br_0_31 wl_0_122 vdd gnd
+ cell_1rw
Xbit_r123_c31
+ bl_0_31 br_0_31 wl_0_123 vdd gnd
+ cell_1rw
Xbit_r124_c31
+ bl_0_31 br_0_31 wl_0_124 vdd gnd
+ cell_1rw
Xbit_r125_c31
+ bl_0_31 br_0_31 wl_0_125 vdd gnd
+ cell_1rw
Xbit_r126_c31
+ bl_0_31 br_0_31 wl_0_126 vdd gnd
+ cell_1rw
Xbit_r127_c31
+ bl_0_31 br_0_31 wl_0_127 vdd gnd
+ cell_1rw
Xbit_r128_c31
+ bl_0_31 br_0_31 wl_0_128 vdd gnd
+ cell_1rw
Xbit_r129_c31
+ bl_0_31 br_0_31 wl_0_129 vdd gnd
+ cell_1rw
Xbit_r130_c31
+ bl_0_31 br_0_31 wl_0_130 vdd gnd
+ cell_1rw
Xbit_r131_c31
+ bl_0_31 br_0_31 wl_0_131 vdd gnd
+ cell_1rw
Xbit_r132_c31
+ bl_0_31 br_0_31 wl_0_132 vdd gnd
+ cell_1rw
Xbit_r133_c31
+ bl_0_31 br_0_31 wl_0_133 vdd gnd
+ cell_1rw
Xbit_r134_c31
+ bl_0_31 br_0_31 wl_0_134 vdd gnd
+ cell_1rw
Xbit_r135_c31
+ bl_0_31 br_0_31 wl_0_135 vdd gnd
+ cell_1rw
Xbit_r136_c31
+ bl_0_31 br_0_31 wl_0_136 vdd gnd
+ cell_1rw
Xbit_r137_c31
+ bl_0_31 br_0_31 wl_0_137 vdd gnd
+ cell_1rw
Xbit_r138_c31
+ bl_0_31 br_0_31 wl_0_138 vdd gnd
+ cell_1rw
Xbit_r139_c31
+ bl_0_31 br_0_31 wl_0_139 vdd gnd
+ cell_1rw
Xbit_r140_c31
+ bl_0_31 br_0_31 wl_0_140 vdd gnd
+ cell_1rw
Xbit_r141_c31
+ bl_0_31 br_0_31 wl_0_141 vdd gnd
+ cell_1rw
Xbit_r142_c31
+ bl_0_31 br_0_31 wl_0_142 vdd gnd
+ cell_1rw
Xbit_r143_c31
+ bl_0_31 br_0_31 wl_0_143 vdd gnd
+ cell_1rw
Xbit_r144_c31
+ bl_0_31 br_0_31 wl_0_144 vdd gnd
+ cell_1rw
Xbit_r145_c31
+ bl_0_31 br_0_31 wl_0_145 vdd gnd
+ cell_1rw
Xbit_r146_c31
+ bl_0_31 br_0_31 wl_0_146 vdd gnd
+ cell_1rw
Xbit_r147_c31
+ bl_0_31 br_0_31 wl_0_147 vdd gnd
+ cell_1rw
Xbit_r148_c31
+ bl_0_31 br_0_31 wl_0_148 vdd gnd
+ cell_1rw
Xbit_r149_c31
+ bl_0_31 br_0_31 wl_0_149 vdd gnd
+ cell_1rw
Xbit_r150_c31
+ bl_0_31 br_0_31 wl_0_150 vdd gnd
+ cell_1rw
Xbit_r151_c31
+ bl_0_31 br_0_31 wl_0_151 vdd gnd
+ cell_1rw
Xbit_r152_c31
+ bl_0_31 br_0_31 wl_0_152 vdd gnd
+ cell_1rw
Xbit_r153_c31
+ bl_0_31 br_0_31 wl_0_153 vdd gnd
+ cell_1rw
Xbit_r154_c31
+ bl_0_31 br_0_31 wl_0_154 vdd gnd
+ cell_1rw
Xbit_r155_c31
+ bl_0_31 br_0_31 wl_0_155 vdd gnd
+ cell_1rw
Xbit_r156_c31
+ bl_0_31 br_0_31 wl_0_156 vdd gnd
+ cell_1rw
Xbit_r157_c31
+ bl_0_31 br_0_31 wl_0_157 vdd gnd
+ cell_1rw
Xbit_r158_c31
+ bl_0_31 br_0_31 wl_0_158 vdd gnd
+ cell_1rw
Xbit_r159_c31
+ bl_0_31 br_0_31 wl_0_159 vdd gnd
+ cell_1rw
Xbit_r160_c31
+ bl_0_31 br_0_31 wl_0_160 vdd gnd
+ cell_1rw
Xbit_r161_c31
+ bl_0_31 br_0_31 wl_0_161 vdd gnd
+ cell_1rw
Xbit_r162_c31
+ bl_0_31 br_0_31 wl_0_162 vdd gnd
+ cell_1rw
Xbit_r163_c31
+ bl_0_31 br_0_31 wl_0_163 vdd gnd
+ cell_1rw
Xbit_r164_c31
+ bl_0_31 br_0_31 wl_0_164 vdd gnd
+ cell_1rw
Xbit_r165_c31
+ bl_0_31 br_0_31 wl_0_165 vdd gnd
+ cell_1rw
Xbit_r166_c31
+ bl_0_31 br_0_31 wl_0_166 vdd gnd
+ cell_1rw
Xbit_r167_c31
+ bl_0_31 br_0_31 wl_0_167 vdd gnd
+ cell_1rw
Xbit_r168_c31
+ bl_0_31 br_0_31 wl_0_168 vdd gnd
+ cell_1rw
Xbit_r169_c31
+ bl_0_31 br_0_31 wl_0_169 vdd gnd
+ cell_1rw
Xbit_r170_c31
+ bl_0_31 br_0_31 wl_0_170 vdd gnd
+ cell_1rw
Xbit_r171_c31
+ bl_0_31 br_0_31 wl_0_171 vdd gnd
+ cell_1rw
Xbit_r172_c31
+ bl_0_31 br_0_31 wl_0_172 vdd gnd
+ cell_1rw
Xbit_r173_c31
+ bl_0_31 br_0_31 wl_0_173 vdd gnd
+ cell_1rw
Xbit_r174_c31
+ bl_0_31 br_0_31 wl_0_174 vdd gnd
+ cell_1rw
Xbit_r175_c31
+ bl_0_31 br_0_31 wl_0_175 vdd gnd
+ cell_1rw
Xbit_r176_c31
+ bl_0_31 br_0_31 wl_0_176 vdd gnd
+ cell_1rw
Xbit_r177_c31
+ bl_0_31 br_0_31 wl_0_177 vdd gnd
+ cell_1rw
Xbit_r178_c31
+ bl_0_31 br_0_31 wl_0_178 vdd gnd
+ cell_1rw
Xbit_r179_c31
+ bl_0_31 br_0_31 wl_0_179 vdd gnd
+ cell_1rw
Xbit_r180_c31
+ bl_0_31 br_0_31 wl_0_180 vdd gnd
+ cell_1rw
Xbit_r181_c31
+ bl_0_31 br_0_31 wl_0_181 vdd gnd
+ cell_1rw
Xbit_r182_c31
+ bl_0_31 br_0_31 wl_0_182 vdd gnd
+ cell_1rw
Xbit_r183_c31
+ bl_0_31 br_0_31 wl_0_183 vdd gnd
+ cell_1rw
Xbit_r184_c31
+ bl_0_31 br_0_31 wl_0_184 vdd gnd
+ cell_1rw
Xbit_r185_c31
+ bl_0_31 br_0_31 wl_0_185 vdd gnd
+ cell_1rw
Xbit_r186_c31
+ bl_0_31 br_0_31 wl_0_186 vdd gnd
+ cell_1rw
Xbit_r187_c31
+ bl_0_31 br_0_31 wl_0_187 vdd gnd
+ cell_1rw
Xbit_r188_c31
+ bl_0_31 br_0_31 wl_0_188 vdd gnd
+ cell_1rw
Xbit_r189_c31
+ bl_0_31 br_0_31 wl_0_189 vdd gnd
+ cell_1rw
Xbit_r190_c31
+ bl_0_31 br_0_31 wl_0_190 vdd gnd
+ cell_1rw
Xbit_r191_c31
+ bl_0_31 br_0_31 wl_0_191 vdd gnd
+ cell_1rw
Xbit_r192_c31
+ bl_0_31 br_0_31 wl_0_192 vdd gnd
+ cell_1rw
Xbit_r193_c31
+ bl_0_31 br_0_31 wl_0_193 vdd gnd
+ cell_1rw
Xbit_r194_c31
+ bl_0_31 br_0_31 wl_0_194 vdd gnd
+ cell_1rw
Xbit_r195_c31
+ bl_0_31 br_0_31 wl_0_195 vdd gnd
+ cell_1rw
Xbit_r196_c31
+ bl_0_31 br_0_31 wl_0_196 vdd gnd
+ cell_1rw
Xbit_r197_c31
+ bl_0_31 br_0_31 wl_0_197 vdd gnd
+ cell_1rw
Xbit_r198_c31
+ bl_0_31 br_0_31 wl_0_198 vdd gnd
+ cell_1rw
Xbit_r199_c31
+ bl_0_31 br_0_31 wl_0_199 vdd gnd
+ cell_1rw
Xbit_r200_c31
+ bl_0_31 br_0_31 wl_0_200 vdd gnd
+ cell_1rw
Xbit_r201_c31
+ bl_0_31 br_0_31 wl_0_201 vdd gnd
+ cell_1rw
Xbit_r202_c31
+ bl_0_31 br_0_31 wl_0_202 vdd gnd
+ cell_1rw
Xbit_r203_c31
+ bl_0_31 br_0_31 wl_0_203 vdd gnd
+ cell_1rw
Xbit_r204_c31
+ bl_0_31 br_0_31 wl_0_204 vdd gnd
+ cell_1rw
Xbit_r205_c31
+ bl_0_31 br_0_31 wl_0_205 vdd gnd
+ cell_1rw
Xbit_r206_c31
+ bl_0_31 br_0_31 wl_0_206 vdd gnd
+ cell_1rw
Xbit_r207_c31
+ bl_0_31 br_0_31 wl_0_207 vdd gnd
+ cell_1rw
Xbit_r208_c31
+ bl_0_31 br_0_31 wl_0_208 vdd gnd
+ cell_1rw
Xbit_r209_c31
+ bl_0_31 br_0_31 wl_0_209 vdd gnd
+ cell_1rw
Xbit_r210_c31
+ bl_0_31 br_0_31 wl_0_210 vdd gnd
+ cell_1rw
Xbit_r211_c31
+ bl_0_31 br_0_31 wl_0_211 vdd gnd
+ cell_1rw
Xbit_r212_c31
+ bl_0_31 br_0_31 wl_0_212 vdd gnd
+ cell_1rw
Xbit_r213_c31
+ bl_0_31 br_0_31 wl_0_213 vdd gnd
+ cell_1rw
Xbit_r214_c31
+ bl_0_31 br_0_31 wl_0_214 vdd gnd
+ cell_1rw
Xbit_r215_c31
+ bl_0_31 br_0_31 wl_0_215 vdd gnd
+ cell_1rw
Xbit_r216_c31
+ bl_0_31 br_0_31 wl_0_216 vdd gnd
+ cell_1rw
Xbit_r217_c31
+ bl_0_31 br_0_31 wl_0_217 vdd gnd
+ cell_1rw
Xbit_r218_c31
+ bl_0_31 br_0_31 wl_0_218 vdd gnd
+ cell_1rw
Xbit_r219_c31
+ bl_0_31 br_0_31 wl_0_219 vdd gnd
+ cell_1rw
Xbit_r220_c31
+ bl_0_31 br_0_31 wl_0_220 vdd gnd
+ cell_1rw
Xbit_r221_c31
+ bl_0_31 br_0_31 wl_0_221 vdd gnd
+ cell_1rw
Xbit_r222_c31
+ bl_0_31 br_0_31 wl_0_222 vdd gnd
+ cell_1rw
Xbit_r223_c31
+ bl_0_31 br_0_31 wl_0_223 vdd gnd
+ cell_1rw
Xbit_r224_c31
+ bl_0_31 br_0_31 wl_0_224 vdd gnd
+ cell_1rw
Xbit_r225_c31
+ bl_0_31 br_0_31 wl_0_225 vdd gnd
+ cell_1rw
Xbit_r226_c31
+ bl_0_31 br_0_31 wl_0_226 vdd gnd
+ cell_1rw
Xbit_r227_c31
+ bl_0_31 br_0_31 wl_0_227 vdd gnd
+ cell_1rw
Xbit_r228_c31
+ bl_0_31 br_0_31 wl_0_228 vdd gnd
+ cell_1rw
Xbit_r229_c31
+ bl_0_31 br_0_31 wl_0_229 vdd gnd
+ cell_1rw
Xbit_r230_c31
+ bl_0_31 br_0_31 wl_0_230 vdd gnd
+ cell_1rw
Xbit_r231_c31
+ bl_0_31 br_0_31 wl_0_231 vdd gnd
+ cell_1rw
Xbit_r232_c31
+ bl_0_31 br_0_31 wl_0_232 vdd gnd
+ cell_1rw
Xbit_r233_c31
+ bl_0_31 br_0_31 wl_0_233 vdd gnd
+ cell_1rw
Xbit_r234_c31
+ bl_0_31 br_0_31 wl_0_234 vdd gnd
+ cell_1rw
Xbit_r235_c31
+ bl_0_31 br_0_31 wl_0_235 vdd gnd
+ cell_1rw
Xbit_r236_c31
+ bl_0_31 br_0_31 wl_0_236 vdd gnd
+ cell_1rw
Xbit_r237_c31
+ bl_0_31 br_0_31 wl_0_237 vdd gnd
+ cell_1rw
Xbit_r238_c31
+ bl_0_31 br_0_31 wl_0_238 vdd gnd
+ cell_1rw
Xbit_r239_c31
+ bl_0_31 br_0_31 wl_0_239 vdd gnd
+ cell_1rw
Xbit_r240_c31
+ bl_0_31 br_0_31 wl_0_240 vdd gnd
+ cell_1rw
Xbit_r241_c31
+ bl_0_31 br_0_31 wl_0_241 vdd gnd
+ cell_1rw
Xbit_r242_c31
+ bl_0_31 br_0_31 wl_0_242 vdd gnd
+ cell_1rw
Xbit_r243_c31
+ bl_0_31 br_0_31 wl_0_243 vdd gnd
+ cell_1rw
Xbit_r244_c31
+ bl_0_31 br_0_31 wl_0_244 vdd gnd
+ cell_1rw
Xbit_r245_c31
+ bl_0_31 br_0_31 wl_0_245 vdd gnd
+ cell_1rw
Xbit_r246_c31
+ bl_0_31 br_0_31 wl_0_246 vdd gnd
+ cell_1rw
Xbit_r247_c31
+ bl_0_31 br_0_31 wl_0_247 vdd gnd
+ cell_1rw
Xbit_r248_c31
+ bl_0_31 br_0_31 wl_0_248 vdd gnd
+ cell_1rw
Xbit_r249_c31
+ bl_0_31 br_0_31 wl_0_249 vdd gnd
+ cell_1rw
Xbit_r250_c31
+ bl_0_31 br_0_31 wl_0_250 vdd gnd
+ cell_1rw
Xbit_r251_c31
+ bl_0_31 br_0_31 wl_0_251 vdd gnd
+ cell_1rw
Xbit_r252_c31
+ bl_0_31 br_0_31 wl_0_252 vdd gnd
+ cell_1rw
Xbit_r253_c31
+ bl_0_31 br_0_31 wl_0_253 vdd gnd
+ cell_1rw
Xbit_r254_c31
+ bl_0_31 br_0_31 wl_0_254 vdd gnd
+ cell_1rw
Xbit_r255_c31
+ bl_0_31 br_0_31 wl_0_255 vdd gnd
+ cell_1rw
.ENDS sram_32b_256_1rw_freepdk45_bitcell_array

.SUBCKT replica_cell_1rw bl br wl vdd gnd
* Inverter 1
MM0 vdd Q gnd gnd NMOS_VTG W=205.00n L=50n
MM4 vdd Q vdd vdd PMOS_VTG W=90n L=50n

* Inverer 2
MM1 Q vdd gnd gnd NMOS_VTG W=205.00n L=50n
MM5 Q vdd vdd vdd PMOS_VTG W=90n L=50n

* Access transistors
MM3 bl wl Q gnd NMOS_VTG W=135.00n L=50n
MM2 br wl vdd gnd NMOS_VTG W=135.00n L=50n
.ENDS cell_1rw


.SUBCKT sram_32b_256_1rw_freepdk45_replica_column
+ bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24
+ wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 wl_0_32
+ wl_0_33 wl_0_34 wl_0_35 wl_0_36 wl_0_37 wl_0_38 wl_0_39 wl_0_40
+ wl_0_41 wl_0_42 wl_0_43 wl_0_44 wl_0_45 wl_0_46 wl_0_47 wl_0_48
+ wl_0_49 wl_0_50 wl_0_51 wl_0_52 wl_0_53 wl_0_54 wl_0_55 wl_0_56
+ wl_0_57 wl_0_58 wl_0_59 wl_0_60 wl_0_61 wl_0_62 wl_0_63 wl_0_64
+ wl_0_65 wl_0_66 wl_0_67 wl_0_68 wl_0_69 wl_0_70 wl_0_71 wl_0_72
+ wl_0_73 wl_0_74 wl_0_75 wl_0_76 wl_0_77 wl_0_78 wl_0_79 wl_0_80
+ wl_0_81 wl_0_82 wl_0_83 wl_0_84 wl_0_85 wl_0_86 wl_0_87 wl_0_88
+ wl_0_89 wl_0_90 wl_0_91 wl_0_92 wl_0_93 wl_0_94 wl_0_95 wl_0_96
+ wl_0_97 wl_0_98 wl_0_99 wl_0_100 wl_0_101 wl_0_102 wl_0_103 wl_0_104
+ wl_0_105 wl_0_106 wl_0_107 wl_0_108 wl_0_109 wl_0_110 wl_0_111
+ wl_0_112 wl_0_113 wl_0_114 wl_0_115 wl_0_116 wl_0_117 wl_0_118
+ wl_0_119 wl_0_120 wl_0_121 wl_0_122 wl_0_123 wl_0_124 wl_0_125
+ wl_0_126 wl_0_127 wl_0_128 wl_0_129 wl_0_130 wl_0_131 wl_0_132
+ wl_0_133 wl_0_134 wl_0_135 wl_0_136 wl_0_137 wl_0_138 wl_0_139
+ wl_0_140 wl_0_141 wl_0_142 wl_0_143 wl_0_144 wl_0_145 wl_0_146
+ wl_0_147 wl_0_148 wl_0_149 wl_0_150 wl_0_151 wl_0_152 wl_0_153
+ wl_0_154 wl_0_155 wl_0_156 wl_0_157 wl_0_158 wl_0_159 wl_0_160
+ wl_0_161 wl_0_162 wl_0_163 wl_0_164 wl_0_165 wl_0_166 wl_0_167
+ wl_0_168 wl_0_169 wl_0_170 wl_0_171 wl_0_172 wl_0_173 wl_0_174
+ wl_0_175 wl_0_176 wl_0_177 wl_0_178 wl_0_179 wl_0_180 wl_0_181
+ wl_0_182 wl_0_183 wl_0_184 wl_0_185 wl_0_186 wl_0_187 wl_0_188
+ wl_0_189 wl_0_190 wl_0_191 wl_0_192 wl_0_193 wl_0_194 wl_0_195
+ wl_0_196 wl_0_197 wl_0_198 wl_0_199 wl_0_200 wl_0_201 wl_0_202
+ wl_0_203 wl_0_204 wl_0_205 wl_0_206 wl_0_207 wl_0_208 wl_0_209
+ wl_0_210 wl_0_211 wl_0_212 wl_0_213 wl_0_214 wl_0_215 wl_0_216
+ wl_0_217 wl_0_218 wl_0_219 wl_0_220 wl_0_221 wl_0_222 wl_0_223
+ wl_0_224 wl_0_225 wl_0_226 wl_0_227 wl_0_228 wl_0_229 wl_0_230
+ wl_0_231 wl_0_232 wl_0_233 wl_0_234 wl_0_235 wl_0_236 wl_0_237
+ wl_0_238 wl_0_239 wl_0_240 wl_0_241 wl_0_242 wl_0_243 wl_0_244
+ wl_0_245 wl_0_246 wl_0_247 wl_0_248 wl_0_249 wl_0_250 wl_0_251
+ wl_0_252 wl_0_253 wl_0_254 wl_0_255 wl_0_256 vdd gnd
* OUTPUT: bl_0_0 
* OUTPUT: br_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* INPUT : wl_0_32 
* INPUT : wl_0_33 
* INPUT : wl_0_34 
* INPUT : wl_0_35 
* INPUT : wl_0_36 
* INPUT : wl_0_37 
* INPUT : wl_0_38 
* INPUT : wl_0_39 
* INPUT : wl_0_40 
* INPUT : wl_0_41 
* INPUT : wl_0_42 
* INPUT : wl_0_43 
* INPUT : wl_0_44 
* INPUT : wl_0_45 
* INPUT : wl_0_46 
* INPUT : wl_0_47 
* INPUT : wl_0_48 
* INPUT : wl_0_49 
* INPUT : wl_0_50 
* INPUT : wl_0_51 
* INPUT : wl_0_52 
* INPUT : wl_0_53 
* INPUT : wl_0_54 
* INPUT : wl_0_55 
* INPUT : wl_0_56 
* INPUT : wl_0_57 
* INPUT : wl_0_58 
* INPUT : wl_0_59 
* INPUT : wl_0_60 
* INPUT : wl_0_61 
* INPUT : wl_0_62 
* INPUT : wl_0_63 
* INPUT : wl_0_64 
* INPUT : wl_0_65 
* INPUT : wl_0_66 
* INPUT : wl_0_67 
* INPUT : wl_0_68 
* INPUT : wl_0_69 
* INPUT : wl_0_70 
* INPUT : wl_0_71 
* INPUT : wl_0_72 
* INPUT : wl_0_73 
* INPUT : wl_0_74 
* INPUT : wl_0_75 
* INPUT : wl_0_76 
* INPUT : wl_0_77 
* INPUT : wl_0_78 
* INPUT : wl_0_79 
* INPUT : wl_0_80 
* INPUT : wl_0_81 
* INPUT : wl_0_82 
* INPUT : wl_0_83 
* INPUT : wl_0_84 
* INPUT : wl_0_85 
* INPUT : wl_0_86 
* INPUT : wl_0_87 
* INPUT : wl_0_88 
* INPUT : wl_0_89 
* INPUT : wl_0_90 
* INPUT : wl_0_91 
* INPUT : wl_0_92 
* INPUT : wl_0_93 
* INPUT : wl_0_94 
* INPUT : wl_0_95 
* INPUT : wl_0_96 
* INPUT : wl_0_97 
* INPUT : wl_0_98 
* INPUT : wl_0_99 
* INPUT : wl_0_100 
* INPUT : wl_0_101 
* INPUT : wl_0_102 
* INPUT : wl_0_103 
* INPUT : wl_0_104 
* INPUT : wl_0_105 
* INPUT : wl_0_106 
* INPUT : wl_0_107 
* INPUT : wl_0_108 
* INPUT : wl_0_109 
* INPUT : wl_0_110 
* INPUT : wl_0_111 
* INPUT : wl_0_112 
* INPUT : wl_0_113 
* INPUT : wl_0_114 
* INPUT : wl_0_115 
* INPUT : wl_0_116 
* INPUT : wl_0_117 
* INPUT : wl_0_118 
* INPUT : wl_0_119 
* INPUT : wl_0_120 
* INPUT : wl_0_121 
* INPUT : wl_0_122 
* INPUT : wl_0_123 
* INPUT : wl_0_124 
* INPUT : wl_0_125 
* INPUT : wl_0_126 
* INPUT : wl_0_127 
* INPUT : wl_0_128 
* INPUT : wl_0_129 
* INPUT : wl_0_130 
* INPUT : wl_0_131 
* INPUT : wl_0_132 
* INPUT : wl_0_133 
* INPUT : wl_0_134 
* INPUT : wl_0_135 
* INPUT : wl_0_136 
* INPUT : wl_0_137 
* INPUT : wl_0_138 
* INPUT : wl_0_139 
* INPUT : wl_0_140 
* INPUT : wl_0_141 
* INPUT : wl_0_142 
* INPUT : wl_0_143 
* INPUT : wl_0_144 
* INPUT : wl_0_145 
* INPUT : wl_0_146 
* INPUT : wl_0_147 
* INPUT : wl_0_148 
* INPUT : wl_0_149 
* INPUT : wl_0_150 
* INPUT : wl_0_151 
* INPUT : wl_0_152 
* INPUT : wl_0_153 
* INPUT : wl_0_154 
* INPUT : wl_0_155 
* INPUT : wl_0_156 
* INPUT : wl_0_157 
* INPUT : wl_0_158 
* INPUT : wl_0_159 
* INPUT : wl_0_160 
* INPUT : wl_0_161 
* INPUT : wl_0_162 
* INPUT : wl_0_163 
* INPUT : wl_0_164 
* INPUT : wl_0_165 
* INPUT : wl_0_166 
* INPUT : wl_0_167 
* INPUT : wl_0_168 
* INPUT : wl_0_169 
* INPUT : wl_0_170 
* INPUT : wl_0_171 
* INPUT : wl_0_172 
* INPUT : wl_0_173 
* INPUT : wl_0_174 
* INPUT : wl_0_175 
* INPUT : wl_0_176 
* INPUT : wl_0_177 
* INPUT : wl_0_178 
* INPUT : wl_0_179 
* INPUT : wl_0_180 
* INPUT : wl_0_181 
* INPUT : wl_0_182 
* INPUT : wl_0_183 
* INPUT : wl_0_184 
* INPUT : wl_0_185 
* INPUT : wl_0_186 
* INPUT : wl_0_187 
* INPUT : wl_0_188 
* INPUT : wl_0_189 
* INPUT : wl_0_190 
* INPUT : wl_0_191 
* INPUT : wl_0_192 
* INPUT : wl_0_193 
* INPUT : wl_0_194 
* INPUT : wl_0_195 
* INPUT : wl_0_196 
* INPUT : wl_0_197 
* INPUT : wl_0_198 
* INPUT : wl_0_199 
* INPUT : wl_0_200 
* INPUT : wl_0_201 
* INPUT : wl_0_202 
* INPUT : wl_0_203 
* INPUT : wl_0_204 
* INPUT : wl_0_205 
* INPUT : wl_0_206 
* INPUT : wl_0_207 
* INPUT : wl_0_208 
* INPUT : wl_0_209 
* INPUT : wl_0_210 
* INPUT : wl_0_211 
* INPUT : wl_0_212 
* INPUT : wl_0_213 
* INPUT : wl_0_214 
* INPUT : wl_0_215 
* INPUT : wl_0_216 
* INPUT : wl_0_217 
* INPUT : wl_0_218 
* INPUT : wl_0_219 
* INPUT : wl_0_220 
* INPUT : wl_0_221 
* INPUT : wl_0_222 
* INPUT : wl_0_223 
* INPUT : wl_0_224 
* INPUT : wl_0_225 
* INPUT : wl_0_226 
* INPUT : wl_0_227 
* INPUT : wl_0_228 
* INPUT : wl_0_229 
* INPUT : wl_0_230 
* INPUT : wl_0_231 
* INPUT : wl_0_232 
* INPUT : wl_0_233 
* INPUT : wl_0_234 
* INPUT : wl_0_235 
* INPUT : wl_0_236 
* INPUT : wl_0_237 
* INPUT : wl_0_238 
* INPUT : wl_0_239 
* INPUT : wl_0_240 
* INPUT : wl_0_241 
* INPUT : wl_0_242 
* INPUT : wl_0_243 
* INPUT : wl_0_244 
* INPUT : wl_0_245 
* INPUT : wl_0_246 
* INPUT : wl_0_247 
* INPUT : wl_0_248 
* INPUT : wl_0_249 
* INPUT : wl_0_250 
* INPUT : wl_0_251 
* INPUT : wl_0_252 
* INPUT : wl_0_253 
* INPUT : wl_0_254 
* INPUT : wl_0_255 
* INPUT : wl_0_256 
* POWER : vdd 
* GROUND: gnd 
Xrbc_0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ replica_cell_1rw
Xrbc_1
+ bl_0_0 br_0_0 wl_0_1 vdd gnd
+ replica_cell_1rw
Xrbc_2
+ bl_0_0 br_0_0 wl_0_2 vdd gnd
+ replica_cell_1rw
Xrbc_3
+ bl_0_0 br_0_0 wl_0_3 vdd gnd
+ replica_cell_1rw
Xrbc_4
+ bl_0_0 br_0_0 wl_0_4 vdd gnd
+ replica_cell_1rw
Xrbc_5
+ bl_0_0 br_0_0 wl_0_5 vdd gnd
+ replica_cell_1rw
Xrbc_6
+ bl_0_0 br_0_0 wl_0_6 vdd gnd
+ replica_cell_1rw
Xrbc_7
+ bl_0_0 br_0_0 wl_0_7 vdd gnd
+ replica_cell_1rw
Xrbc_8
+ bl_0_0 br_0_0 wl_0_8 vdd gnd
+ replica_cell_1rw
Xrbc_9
+ bl_0_0 br_0_0 wl_0_9 vdd gnd
+ replica_cell_1rw
Xrbc_10
+ bl_0_0 br_0_0 wl_0_10 vdd gnd
+ replica_cell_1rw
Xrbc_11
+ bl_0_0 br_0_0 wl_0_11 vdd gnd
+ replica_cell_1rw
Xrbc_12
+ bl_0_0 br_0_0 wl_0_12 vdd gnd
+ replica_cell_1rw
Xrbc_13
+ bl_0_0 br_0_0 wl_0_13 vdd gnd
+ replica_cell_1rw
Xrbc_14
+ bl_0_0 br_0_0 wl_0_14 vdd gnd
+ replica_cell_1rw
Xrbc_15
+ bl_0_0 br_0_0 wl_0_15 vdd gnd
+ replica_cell_1rw
Xrbc_16
+ bl_0_0 br_0_0 wl_0_16 vdd gnd
+ replica_cell_1rw
Xrbc_17
+ bl_0_0 br_0_0 wl_0_17 vdd gnd
+ replica_cell_1rw
Xrbc_18
+ bl_0_0 br_0_0 wl_0_18 vdd gnd
+ replica_cell_1rw
Xrbc_19
+ bl_0_0 br_0_0 wl_0_19 vdd gnd
+ replica_cell_1rw
Xrbc_20
+ bl_0_0 br_0_0 wl_0_20 vdd gnd
+ replica_cell_1rw
Xrbc_21
+ bl_0_0 br_0_0 wl_0_21 vdd gnd
+ replica_cell_1rw
Xrbc_22
+ bl_0_0 br_0_0 wl_0_22 vdd gnd
+ replica_cell_1rw
Xrbc_23
+ bl_0_0 br_0_0 wl_0_23 vdd gnd
+ replica_cell_1rw
Xrbc_24
+ bl_0_0 br_0_0 wl_0_24 vdd gnd
+ replica_cell_1rw
Xrbc_25
+ bl_0_0 br_0_0 wl_0_25 vdd gnd
+ replica_cell_1rw
Xrbc_26
+ bl_0_0 br_0_0 wl_0_26 vdd gnd
+ replica_cell_1rw
Xrbc_27
+ bl_0_0 br_0_0 wl_0_27 vdd gnd
+ replica_cell_1rw
Xrbc_28
+ bl_0_0 br_0_0 wl_0_28 vdd gnd
+ replica_cell_1rw
Xrbc_29
+ bl_0_0 br_0_0 wl_0_29 vdd gnd
+ replica_cell_1rw
Xrbc_30
+ bl_0_0 br_0_0 wl_0_30 vdd gnd
+ replica_cell_1rw
Xrbc_31
+ bl_0_0 br_0_0 wl_0_31 vdd gnd
+ replica_cell_1rw
Xrbc_32
+ bl_0_0 br_0_0 wl_0_32 vdd gnd
+ replica_cell_1rw
Xrbc_33
+ bl_0_0 br_0_0 wl_0_33 vdd gnd
+ replica_cell_1rw
Xrbc_34
+ bl_0_0 br_0_0 wl_0_34 vdd gnd
+ replica_cell_1rw
Xrbc_35
+ bl_0_0 br_0_0 wl_0_35 vdd gnd
+ replica_cell_1rw
Xrbc_36
+ bl_0_0 br_0_0 wl_0_36 vdd gnd
+ replica_cell_1rw
Xrbc_37
+ bl_0_0 br_0_0 wl_0_37 vdd gnd
+ replica_cell_1rw
Xrbc_38
+ bl_0_0 br_0_0 wl_0_38 vdd gnd
+ replica_cell_1rw
Xrbc_39
+ bl_0_0 br_0_0 wl_0_39 vdd gnd
+ replica_cell_1rw
Xrbc_40
+ bl_0_0 br_0_0 wl_0_40 vdd gnd
+ replica_cell_1rw
Xrbc_41
+ bl_0_0 br_0_0 wl_0_41 vdd gnd
+ replica_cell_1rw
Xrbc_42
+ bl_0_0 br_0_0 wl_0_42 vdd gnd
+ replica_cell_1rw
Xrbc_43
+ bl_0_0 br_0_0 wl_0_43 vdd gnd
+ replica_cell_1rw
Xrbc_44
+ bl_0_0 br_0_0 wl_0_44 vdd gnd
+ replica_cell_1rw
Xrbc_45
+ bl_0_0 br_0_0 wl_0_45 vdd gnd
+ replica_cell_1rw
Xrbc_46
+ bl_0_0 br_0_0 wl_0_46 vdd gnd
+ replica_cell_1rw
Xrbc_47
+ bl_0_0 br_0_0 wl_0_47 vdd gnd
+ replica_cell_1rw
Xrbc_48
+ bl_0_0 br_0_0 wl_0_48 vdd gnd
+ replica_cell_1rw
Xrbc_49
+ bl_0_0 br_0_0 wl_0_49 vdd gnd
+ replica_cell_1rw
Xrbc_50
+ bl_0_0 br_0_0 wl_0_50 vdd gnd
+ replica_cell_1rw
Xrbc_51
+ bl_0_0 br_0_0 wl_0_51 vdd gnd
+ replica_cell_1rw
Xrbc_52
+ bl_0_0 br_0_0 wl_0_52 vdd gnd
+ replica_cell_1rw
Xrbc_53
+ bl_0_0 br_0_0 wl_0_53 vdd gnd
+ replica_cell_1rw
Xrbc_54
+ bl_0_0 br_0_0 wl_0_54 vdd gnd
+ replica_cell_1rw
Xrbc_55
+ bl_0_0 br_0_0 wl_0_55 vdd gnd
+ replica_cell_1rw
Xrbc_56
+ bl_0_0 br_0_0 wl_0_56 vdd gnd
+ replica_cell_1rw
Xrbc_57
+ bl_0_0 br_0_0 wl_0_57 vdd gnd
+ replica_cell_1rw
Xrbc_58
+ bl_0_0 br_0_0 wl_0_58 vdd gnd
+ replica_cell_1rw
Xrbc_59
+ bl_0_0 br_0_0 wl_0_59 vdd gnd
+ replica_cell_1rw
Xrbc_60
+ bl_0_0 br_0_0 wl_0_60 vdd gnd
+ replica_cell_1rw
Xrbc_61
+ bl_0_0 br_0_0 wl_0_61 vdd gnd
+ replica_cell_1rw
Xrbc_62
+ bl_0_0 br_0_0 wl_0_62 vdd gnd
+ replica_cell_1rw
Xrbc_63
+ bl_0_0 br_0_0 wl_0_63 vdd gnd
+ replica_cell_1rw
Xrbc_64
+ bl_0_0 br_0_0 wl_0_64 vdd gnd
+ replica_cell_1rw
Xrbc_65
+ bl_0_0 br_0_0 wl_0_65 vdd gnd
+ replica_cell_1rw
Xrbc_66
+ bl_0_0 br_0_0 wl_0_66 vdd gnd
+ replica_cell_1rw
Xrbc_67
+ bl_0_0 br_0_0 wl_0_67 vdd gnd
+ replica_cell_1rw
Xrbc_68
+ bl_0_0 br_0_0 wl_0_68 vdd gnd
+ replica_cell_1rw
Xrbc_69
+ bl_0_0 br_0_0 wl_0_69 vdd gnd
+ replica_cell_1rw
Xrbc_70
+ bl_0_0 br_0_0 wl_0_70 vdd gnd
+ replica_cell_1rw
Xrbc_71
+ bl_0_0 br_0_0 wl_0_71 vdd gnd
+ replica_cell_1rw
Xrbc_72
+ bl_0_0 br_0_0 wl_0_72 vdd gnd
+ replica_cell_1rw
Xrbc_73
+ bl_0_0 br_0_0 wl_0_73 vdd gnd
+ replica_cell_1rw
Xrbc_74
+ bl_0_0 br_0_0 wl_0_74 vdd gnd
+ replica_cell_1rw
Xrbc_75
+ bl_0_0 br_0_0 wl_0_75 vdd gnd
+ replica_cell_1rw
Xrbc_76
+ bl_0_0 br_0_0 wl_0_76 vdd gnd
+ replica_cell_1rw
Xrbc_77
+ bl_0_0 br_0_0 wl_0_77 vdd gnd
+ replica_cell_1rw
Xrbc_78
+ bl_0_0 br_0_0 wl_0_78 vdd gnd
+ replica_cell_1rw
Xrbc_79
+ bl_0_0 br_0_0 wl_0_79 vdd gnd
+ replica_cell_1rw
Xrbc_80
+ bl_0_0 br_0_0 wl_0_80 vdd gnd
+ replica_cell_1rw
Xrbc_81
+ bl_0_0 br_0_0 wl_0_81 vdd gnd
+ replica_cell_1rw
Xrbc_82
+ bl_0_0 br_0_0 wl_0_82 vdd gnd
+ replica_cell_1rw
Xrbc_83
+ bl_0_0 br_0_0 wl_0_83 vdd gnd
+ replica_cell_1rw
Xrbc_84
+ bl_0_0 br_0_0 wl_0_84 vdd gnd
+ replica_cell_1rw
Xrbc_85
+ bl_0_0 br_0_0 wl_0_85 vdd gnd
+ replica_cell_1rw
Xrbc_86
+ bl_0_0 br_0_0 wl_0_86 vdd gnd
+ replica_cell_1rw
Xrbc_87
+ bl_0_0 br_0_0 wl_0_87 vdd gnd
+ replica_cell_1rw
Xrbc_88
+ bl_0_0 br_0_0 wl_0_88 vdd gnd
+ replica_cell_1rw
Xrbc_89
+ bl_0_0 br_0_0 wl_0_89 vdd gnd
+ replica_cell_1rw
Xrbc_90
+ bl_0_0 br_0_0 wl_0_90 vdd gnd
+ replica_cell_1rw
Xrbc_91
+ bl_0_0 br_0_0 wl_0_91 vdd gnd
+ replica_cell_1rw
Xrbc_92
+ bl_0_0 br_0_0 wl_0_92 vdd gnd
+ replica_cell_1rw
Xrbc_93
+ bl_0_0 br_0_0 wl_0_93 vdd gnd
+ replica_cell_1rw
Xrbc_94
+ bl_0_0 br_0_0 wl_0_94 vdd gnd
+ replica_cell_1rw
Xrbc_95
+ bl_0_0 br_0_0 wl_0_95 vdd gnd
+ replica_cell_1rw
Xrbc_96
+ bl_0_0 br_0_0 wl_0_96 vdd gnd
+ replica_cell_1rw
Xrbc_97
+ bl_0_0 br_0_0 wl_0_97 vdd gnd
+ replica_cell_1rw
Xrbc_98
+ bl_0_0 br_0_0 wl_0_98 vdd gnd
+ replica_cell_1rw
Xrbc_99
+ bl_0_0 br_0_0 wl_0_99 vdd gnd
+ replica_cell_1rw
Xrbc_100
+ bl_0_0 br_0_0 wl_0_100 vdd gnd
+ replica_cell_1rw
Xrbc_101
+ bl_0_0 br_0_0 wl_0_101 vdd gnd
+ replica_cell_1rw
Xrbc_102
+ bl_0_0 br_0_0 wl_0_102 vdd gnd
+ replica_cell_1rw
Xrbc_103
+ bl_0_0 br_0_0 wl_0_103 vdd gnd
+ replica_cell_1rw
Xrbc_104
+ bl_0_0 br_0_0 wl_0_104 vdd gnd
+ replica_cell_1rw
Xrbc_105
+ bl_0_0 br_0_0 wl_0_105 vdd gnd
+ replica_cell_1rw
Xrbc_106
+ bl_0_0 br_0_0 wl_0_106 vdd gnd
+ replica_cell_1rw
Xrbc_107
+ bl_0_0 br_0_0 wl_0_107 vdd gnd
+ replica_cell_1rw
Xrbc_108
+ bl_0_0 br_0_0 wl_0_108 vdd gnd
+ replica_cell_1rw
Xrbc_109
+ bl_0_0 br_0_0 wl_0_109 vdd gnd
+ replica_cell_1rw
Xrbc_110
+ bl_0_0 br_0_0 wl_0_110 vdd gnd
+ replica_cell_1rw
Xrbc_111
+ bl_0_0 br_0_0 wl_0_111 vdd gnd
+ replica_cell_1rw
Xrbc_112
+ bl_0_0 br_0_0 wl_0_112 vdd gnd
+ replica_cell_1rw
Xrbc_113
+ bl_0_0 br_0_0 wl_0_113 vdd gnd
+ replica_cell_1rw
Xrbc_114
+ bl_0_0 br_0_0 wl_0_114 vdd gnd
+ replica_cell_1rw
Xrbc_115
+ bl_0_0 br_0_0 wl_0_115 vdd gnd
+ replica_cell_1rw
Xrbc_116
+ bl_0_0 br_0_0 wl_0_116 vdd gnd
+ replica_cell_1rw
Xrbc_117
+ bl_0_0 br_0_0 wl_0_117 vdd gnd
+ replica_cell_1rw
Xrbc_118
+ bl_0_0 br_0_0 wl_0_118 vdd gnd
+ replica_cell_1rw
Xrbc_119
+ bl_0_0 br_0_0 wl_0_119 vdd gnd
+ replica_cell_1rw
Xrbc_120
+ bl_0_0 br_0_0 wl_0_120 vdd gnd
+ replica_cell_1rw
Xrbc_121
+ bl_0_0 br_0_0 wl_0_121 vdd gnd
+ replica_cell_1rw
Xrbc_122
+ bl_0_0 br_0_0 wl_0_122 vdd gnd
+ replica_cell_1rw
Xrbc_123
+ bl_0_0 br_0_0 wl_0_123 vdd gnd
+ replica_cell_1rw
Xrbc_124
+ bl_0_0 br_0_0 wl_0_124 vdd gnd
+ replica_cell_1rw
Xrbc_125
+ bl_0_0 br_0_0 wl_0_125 vdd gnd
+ replica_cell_1rw
Xrbc_126
+ bl_0_0 br_0_0 wl_0_126 vdd gnd
+ replica_cell_1rw
Xrbc_127
+ bl_0_0 br_0_0 wl_0_127 vdd gnd
+ replica_cell_1rw
Xrbc_128
+ bl_0_0 br_0_0 wl_0_128 vdd gnd
+ replica_cell_1rw
Xrbc_129
+ bl_0_0 br_0_0 wl_0_129 vdd gnd
+ replica_cell_1rw
Xrbc_130
+ bl_0_0 br_0_0 wl_0_130 vdd gnd
+ replica_cell_1rw
Xrbc_131
+ bl_0_0 br_0_0 wl_0_131 vdd gnd
+ replica_cell_1rw
Xrbc_132
+ bl_0_0 br_0_0 wl_0_132 vdd gnd
+ replica_cell_1rw
Xrbc_133
+ bl_0_0 br_0_0 wl_0_133 vdd gnd
+ replica_cell_1rw
Xrbc_134
+ bl_0_0 br_0_0 wl_0_134 vdd gnd
+ replica_cell_1rw
Xrbc_135
+ bl_0_0 br_0_0 wl_0_135 vdd gnd
+ replica_cell_1rw
Xrbc_136
+ bl_0_0 br_0_0 wl_0_136 vdd gnd
+ replica_cell_1rw
Xrbc_137
+ bl_0_0 br_0_0 wl_0_137 vdd gnd
+ replica_cell_1rw
Xrbc_138
+ bl_0_0 br_0_0 wl_0_138 vdd gnd
+ replica_cell_1rw
Xrbc_139
+ bl_0_0 br_0_0 wl_0_139 vdd gnd
+ replica_cell_1rw
Xrbc_140
+ bl_0_0 br_0_0 wl_0_140 vdd gnd
+ replica_cell_1rw
Xrbc_141
+ bl_0_0 br_0_0 wl_0_141 vdd gnd
+ replica_cell_1rw
Xrbc_142
+ bl_0_0 br_0_0 wl_0_142 vdd gnd
+ replica_cell_1rw
Xrbc_143
+ bl_0_0 br_0_0 wl_0_143 vdd gnd
+ replica_cell_1rw
Xrbc_144
+ bl_0_0 br_0_0 wl_0_144 vdd gnd
+ replica_cell_1rw
Xrbc_145
+ bl_0_0 br_0_0 wl_0_145 vdd gnd
+ replica_cell_1rw
Xrbc_146
+ bl_0_0 br_0_0 wl_0_146 vdd gnd
+ replica_cell_1rw
Xrbc_147
+ bl_0_0 br_0_0 wl_0_147 vdd gnd
+ replica_cell_1rw
Xrbc_148
+ bl_0_0 br_0_0 wl_0_148 vdd gnd
+ replica_cell_1rw
Xrbc_149
+ bl_0_0 br_0_0 wl_0_149 vdd gnd
+ replica_cell_1rw
Xrbc_150
+ bl_0_0 br_0_0 wl_0_150 vdd gnd
+ replica_cell_1rw
Xrbc_151
+ bl_0_0 br_0_0 wl_0_151 vdd gnd
+ replica_cell_1rw
Xrbc_152
+ bl_0_0 br_0_0 wl_0_152 vdd gnd
+ replica_cell_1rw
Xrbc_153
+ bl_0_0 br_0_0 wl_0_153 vdd gnd
+ replica_cell_1rw
Xrbc_154
+ bl_0_0 br_0_0 wl_0_154 vdd gnd
+ replica_cell_1rw
Xrbc_155
+ bl_0_0 br_0_0 wl_0_155 vdd gnd
+ replica_cell_1rw
Xrbc_156
+ bl_0_0 br_0_0 wl_0_156 vdd gnd
+ replica_cell_1rw
Xrbc_157
+ bl_0_0 br_0_0 wl_0_157 vdd gnd
+ replica_cell_1rw
Xrbc_158
+ bl_0_0 br_0_0 wl_0_158 vdd gnd
+ replica_cell_1rw
Xrbc_159
+ bl_0_0 br_0_0 wl_0_159 vdd gnd
+ replica_cell_1rw
Xrbc_160
+ bl_0_0 br_0_0 wl_0_160 vdd gnd
+ replica_cell_1rw
Xrbc_161
+ bl_0_0 br_0_0 wl_0_161 vdd gnd
+ replica_cell_1rw
Xrbc_162
+ bl_0_0 br_0_0 wl_0_162 vdd gnd
+ replica_cell_1rw
Xrbc_163
+ bl_0_0 br_0_0 wl_0_163 vdd gnd
+ replica_cell_1rw
Xrbc_164
+ bl_0_0 br_0_0 wl_0_164 vdd gnd
+ replica_cell_1rw
Xrbc_165
+ bl_0_0 br_0_0 wl_0_165 vdd gnd
+ replica_cell_1rw
Xrbc_166
+ bl_0_0 br_0_0 wl_0_166 vdd gnd
+ replica_cell_1rw
Xrbc_167
+ bl_0_0 br_0_0 wl_0_167 vdd gnd
+ replica_cell_1rw
Xrbc_168
+ bl_0_0 br_0_0 wl_0_168 vdd gnd
+ replica_cell_1rw
Xrbc_169
+ bl_0_0 br_0_0 wl_0_169 vdd gnd
+ replica_cell_1rw
Xrbc_170
+ bl_0_0 br_0_0 wl_0_170 vdd gnd
+ replica_cell_1rw
Xrbc_171
+ bl_0_0 br_0_0 wl_0_171 vdd gnd
+ replica_cell_1rw
Xrbc_172
+ bl_0_0 br_0_0 wl_0_172 vdd gnd
+ replica_cell_1rw
Xrbc_173
+ bl_0_0 br_0_0 wl_0_173 vdd gnd
+ replica_cell_1rw
Xrbc_174
+ bl_0_0 br_0_0 wl_0_174 vdd gnd
+ replica_cell_1rw
Xrbc_175
+ bl_0_0 br_0_0 wl_0_175 vdd gnd
+ replica_cell_1rw
Xrbc_176
+ bl_0_0 br_0_0 wl_0_176 vdd gnd
+ replica_cell_1rw
Xrbc_177
+ bl_0_0 br_0_0 wl_0_177 vdd gnd
+ replica_cell_1rw
Xrbc_178
+ bl_0_0 br_0_0 wl_0_178 vdd gnd
+ replica_cell_1rw
Xrbc_179
+ bl_0_0 br_0_0 wl_0_179 vdd gnd
+ replica_cell_1rw
Xrbc_180
+ bl_0_0 br_0_0 wl_0_180 vdd gnd
+ replica_cell_1rw
Xrbc_181
+ bl_0_0 br_0_0 wl_0_181 vdd gnd
+ replica_cell_1rw
Xrbc_182
+ bl_0_0 br_0_0 wl_0_182 vdd gnd
+ replica_cell_1rw
Xrbc_183
+ bl_0_0 br_0_0 wl_0_183 vdd gnd
+ replica_cell_1rw
Xrbc_184
+ bl_0_0 br_0_0 wl_0_184 vdd gnd
+ replica_cell_1rw
Xrbc_185
+ bl_0_0 br_0_0 wl_0_185 vdd gnd
+ replica_cell_1rw
Xrbc_186
+ bl_0_0 br_0_0 wl_0_186 vdd gnd
+ replica_cell_1rw
Xrbc_187
+ bl_0_0 br_0_0 wl_0_187 vdd gnd
+ replica_cell_1rw
Xrbc_188
+ bl_0_0 br_0_0 wl_0_188 vdd gnd
+ replica_cell_1rw
Xrbc_189
+ bl_0_0 br_0_0 wl_0_189 vdd gnd
+ replica_cell_1rw
Xrbc_190
+ bl_0_0 br_0_0 wl_0_190 vdd gnd
+ replica_cell_1rw
Xrbc_191
+ bl_0_0 br_0_0 wl_0_191 vdd gnd
+ replica_cell_1rw
Xrbc_192
+ bl_0_0 br_0_0 wl_0_192 vdd gnd
+ replica_cell_1rw
Xrbc_193
+ bl_0_0 br_0_0 wl_0_193 vdd gnd
+ replica_cell_1rw
Xrbc_194
+ bl_0_0 br_0_0 wl_0_194 vdd gnd
+ replica_cell_1rw
Xrbc_195
+ bl_0_0 br_0_0 wl_0_195 vdd gnd
+ replica_cell_1rw
Xrbc_196
+ bl_0_0 br_0_0 wl_0_196 vdd gnd
+ replica_cell_1rw
Xrbc_197
+ bl_0_0 br_0_0 wl_0_197 vdd gnd
+ replica_cell_1rw
Xrbc_198
+ bl_0_0 br_0_0 wl_0_198 vdd gnd
+ replica_cell_1rw
Xrbc_199
+ bl_0_0 br_0_0 wl_0_199 vdd gnd
+ replica_cell_1rw
Xrbc_200
+ bl_0_0 br_0_0 wl_0_200 vdd gnd
+ replica_cell_1rw
Xrbc_201
+ bl_0_0 br_0_0 wl_0_201 vdd gnd
+ replica_cell_1rw
Xrbc_202
+ bl_0_0 br_0_0 wl_0_202 vdd gnd
+ replica_cell_1rw
Xrbc_203
+ bl_0_0 br_0_0 wl_0_203 vdd gnd
+ replica_cell_1rw
Xrbc_204
+ bl_0_0 br_0_0 wl_0_204 vdd gnd
+ replica_cell_1rw
Xrbc_205
+ bl_0_0 br_0_0 wl_0_205 vdd gnd
+ replica_cell_1rw
Xrbc_206
+ bl_0_0 br_0_0 wl_0_206 vdd gnd
+ replica_cell_1rw
Xrbc_207
+ bl_0_0 br_0_0 wl_0_207 vdd gnd
+ replica_cell_1rw
Xrbc_208
+ bl_0_0 br_0_0 wl_0_208 vdd gnd
+ replica_cell_1rw
Xrbc_209
+ bl_0_0 br_0_0 wl_0_209 vdd gnd
+ replica_cell_1rw
Xrbc_210
+ bl_0_0 br_0_0 wl_0_210 vdd gnd
+ replica_cell_1rw
Xrbc_211
+ bl_0_0 br_0_0 wl_0_211 vdd gnd
+ replica_cell_1rw
Xrbc_212
+ bl_0_0 br_0_0 wl_0_212 vdd gnd
+ replica_cell_1rw
Xrbc_213
+ bl_0_0 br_0_0 wl_0_213 vdd gnd
+ replica_cell_1rw
Xrbc_214
+ bl_0_0 br_0_0 wl_0_214 vdd gnd
+ replica_cell_1rw
Xrbc_215
+ bl_0_0 br_0_0 wl_0_215 vdd gnd
+ replica_cell_1rw
Xrbc_216
+ bl_0_0 br_0_0 wl_0_216 vdd gnd
+ replica_cell_1rw
Xrbc_217
+ bl_0_0 br_0_0 wl_0_217 vdd gnd
+ replica_cell_1rw
Xrbc_218
+ bl_0_0 br_0_0 wl_0_218 vdd gnd
+ replica_cell_1rw
Xrbc_219
+ bl_0_0 br_0_0 wl_0_219 vdd gnd
+ replica_cell_1rw
Xrbc_220
+ bl_0_0 br_0_0 wl_0_220 vdd gnd
+ replica_cell_1rw
Xrbc_221
+ bl_0_0 br_0_0 wl_0_221 vdd gnd
+ replica_cell_1rw
Xrbc_222
+ bl_0_0 br_0_0 wl_0_222 vdd gnd
+ replica_cell_1rw
Xrbc_223
+ bl_0_0 br_0_0 wl_0_223 vdd gnd
+ replica_cell_1rw
Xrbc_224
+ bl_0_0 br_0_0 wl_0_224 vdd gnd
+ replica_cell_1rw
Xrbc_225
+ bl_0_0 br_0_0 wl_0_225 vdd gnd
+ replica_cell_1rw
Xrbc_226
+ bl_0_0 br_0_0 wl_0_226 vdd gnd
+ replica_cell_1rw
Xrbc_227
+ bl_0_0 br_0_0 wl_0_227 vdd gnd
+ replica_cell_1rw
Xrbc_228
+ bl_0_0 br_0_0 wl_0_228 vdd gnd
+ replica_cell_1rw
Xrbc_229
+ bl_0_0 br_0_0 wl_0_229 vdd gnd
+ replica_cell_1rw
Xrbc_230
+ bl_0_0 br_0_0 wl_0_230 vdd gnd
+ replica_cell_1rw
Xrbc_231
+ bl_0_0 br_0_0 wl_0_231 vdd gnd
+ replica_cell_1rw
Xrbc_232
+ bl_0_0 br_0_0 wl_0_232 vdd gnd
+ replica_cell_1rw
Xrbc_233
+ bl_0_0 br_0_0 wl_0_233 vdd gnd
+ replica_cell_1rw
Xrbc_234
+ bl_0_0 br_0_0 wl_0_234 vdd gnd
+ replica_cell_1rw
Xrbc_235
+ bl_0_0 br_0_0 wl_0_235 vdd gnd
+ replica_cell_1rw
Xrbc_236
+ bl_0_0 br_0_0 wl_0_236 vdd gnd
+ replica_cell_1rw
Xrbc_237
+ bl_0_0 br_0_0 wl_0_237 vdd gnd
+ replica_cell_1rw
Xrbc_238
+ bl_0_0 br_0_0 wl_0_238 vdd gnd
+ replica_cell_1rw
Xrbc_239
+ bl_0_0 br_0_0 wl_0_239 vdd gnd
+ replica_cell_1rw
Xrbc_240
+ bl_0_0 br_0_0 wl_0_240 vdd gnd
+ replica_cell_1rw
Xrbc_241
+ bl_0_0 br_0_0 wl_0_241 vdd gnd
+ replica_cell_1rw
Xrbc_242
+ bl_0_0 br_0_0 wl_0_242 vdd gnd
+ replica_cell_1rw
Xrbc_243
+ bl_0_0 br_0_0 wl_0_243 vdd gnd
+ replica_cell_1rw
Xrbc_244
+ bl_0_0 br_0_0 wl_0_244 vdd gnd
+ replica_cell_1rw
Xrbc_245
+ bl_0_0 br_0_0 wl_0_245 vdd gnd
+ replica_cell_1rw
Xrbc_246
+ bl_0_0 br_0_0 wl_0_246 vdd gnd
+ replica_cell_1rw
Xrbc_247
+ bl_0_0 br_0_0 wl_0_247 vdd gnd
+ replica_cell_1rw
Xrbc_248
+ bl_0_0 br_0_0 wl_0_248 vdd gnd
+ replica_cell_1rw
Xrbc_249
+ bl_0_0 br_0_0 wl_0_249 vdd gnd
+ replica_cell_1rw
Xrbc_250
+ bl_0_0 br_0_0 wl_0_250 vdd gnd
+ replica_cell_1rw
Xrbc_251
+ bl_0_0 br_0_0 wl_0_251 vdd gnd
+ replica_cell_1rw
Xrbc_252
+ bl_0_0 br_0_0 wl_0_252 vdd gnd
+ replica_cell_1rw
Xrbc_253
+ bl_0_0 br_0_0 wl_0_253 vdd gnd
+ replica_cell_1rw
Xrbc_254
+ bl_0_0 br_0_0 wl_0_254 vdd gnd
+ replica_cell_1rw
Xrbc_255
+ bl_0_0 br_0_0 wl_0_255 vdd gnd
+ replica_cell_1rw
Xrbc_256
+ bl_0_0 br_0_0 wl_0_256 vdd gnd
+ replica_cell_1rw
.ENDS sram_32b_256_1rw_freepdk45_replica_column

.SUBCKT sram_32b_256_1rw_freepdk45_dummy_array
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 wl_0_0 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INOUT : bl_0_24 
* INOUT : br_0_24 
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INPUT : wl_0_0 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c1
+ bl_0_1 br_0_1 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c2
+ bl_0_2 br_0_2 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c3
+ bl_0_3 br_0_3 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c4
+ bl_0_4 br_0_4 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c5
+ bl_0_5 br_0_5 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c6
+ bl_0_6 br_0_6 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c7
+ bl_0_7 br_0_7 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c8
+ bl_0_8 br_0_8 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c9
+ bl_0_9 br_0_9 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c10
+ bl_0_10 br_0_10 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c11
+ bl_0_11 br_0_11 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c12
+ bl_0_12 br_0_12 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c13
+ bl_0_13 br_0_13 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c14
+ bl_0_14 br_0_14 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c15
+ bl_0_15 br_0_15 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c16
+ bl_0_16 br_0_16 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c17
+ bl_0_17 br_0_17 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c18
+ bl_0_18 br_0_18 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c19
+ bl_0_19 br_0_19 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c20
+ bl_0_20 br_0_20 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c21
+ bl_0_21 br_0_21 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c22
+ bl_0_22 br_0_22 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c23
+ bl_0_23 br_0_23 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c24
+ bl_0_24 br_0_24 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c25
+ bl_0_25 br_0_25 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c26
+ bl_0_26 br_0_26 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c27
+ bl_0_27 br_0_27 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c28
+ bl_0_28 br_0_28 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c29
+ bl_0_29 br_0_29 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c30
+ bl_0_30 br_0_30 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c31
+ bl_0_31 br_0_31 wl_0_0 vdd gnd
+ dummy_cell_1rw
.ENDS sram_32b_256_1rw_freepdk45_dummy_array

.SUBCKT sram_32b_256_1rw_freepdk45_replica_bitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 rbl_wl_0_0 wl_0_0
+ wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18
+ wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26
+ wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 wl_0_32 wl_0_33 wl_0_34
+ wl_0_35 wl_0_36 wl_0_37 wl_0_38 wl_0_39 wl_0_40 wl_0_41 wl_0_42
+ wl_0_43 wl_0_44 wl_0_45 wl_0_46 wl_0_47 wl_0_48 wl_0_49 wl_0_50
+ wl_0_51 wl_0_52 wl_0_53 wl_0_54 wl_0_55 wl_0_56 wl_0_57 wl_0_58
+ wl_0_59 wl_0_60 wl_0_61 wl_0_62 wl_0_63 wl_0_64 wl_0_65 wl_0_66
+ wl_0_67 wl_0_68 wl_0_69 wl_0_70 wl_0_71 wl_0_72 wl_0_73 wl_0_74
+ wl_0_75 wl_0_76 wl_0_77 wl_0_78 wl_0_79 wl_0_80 wl_0_81 wl_0_82
+ wl_0_83 wl_0_84 wl_0_85 wl_0_86 wl_0_87 wl_0_88 wl_0_89 wl_0_90
+ wl_0_91 wl_0_92 wl_0_93 wl_0_94 wl_0_95 wl_0_96 wl_0_97 wl_0_98
+ wl_0_99 wl_0_100 wl_0_101 wl_0_102 wl_0_103 wl_0_104 wl_0_105 wl_0_106
+ wl_0_107 wl_0_108 wl_0_109 wl_0_110 wl_0_111 wl_0_112 wl_0_113
+ wl_0_114 wl_0_115 wl_0_116 wl_0_117 wl_0_118 wl_0_119 wl_0_120
+ wl_0_121 wl_0_122 wl_0_123 wl_0_124 wl_0_125 wl_0_126 wl_0_127
+ wl_0_128 wl_0_129 wl_0_130 wl_0_131 wl_0_132 wl_0_133 wl_0_134
+ wl_0_135 wl_0_136 wl_0_137 wl_0_138 wl_0_139 wl_0_140 wl_0_141
+ wl_0_142 wl_0_143 wl_0_144 wl_0_145 wl_0_146 wl_0_147 wl_0_148
+ wl_0_149 wl_0_150 wl_0_151 wl_0_152 wl_0_153 wl_0_154 wl_0_155
+ wl_0_156 wl_0_157 wl_0_158 wl_0_159 wl_0_160 wl_0_161 wl_0_162
+ wl_0_163 wl_0_164 wl_0_165 wl_0_166 wl_0_167 wl_0_168 wl_0_169
+ wl_0_170 wl_0_171 wl_0_172 wl_0_173 wl_0_174 wl_0_175 wl_0_176
+ wl_0_177 wl_0_178 wl_0_179 wl_0_180 wl_0_181 wl_0_182 wl_0_183
+ wl_0_184 wl_0_185 wl_0_186 wl_0_187 wl_0_188 wl_0_189 wl_0_190
+ wl_0_191 wl_0_192 wl_0_193 wl_0_194 wl_0_195 wl_0_196 wl_0_197
+ wl_0_198 wl_0_199 wl_0_200 wl_0_201 wl_0_202 wl_0_203 wl_0_204
+ wl_0_205 wl_0_206 wl_0_207 wl_0_208 wl_0_209 wl_0_210 wl_0_211
+ wl_0_212 wl_0_213 wl_0_214 wl_0_215 wl_0_216 wl_0_217 wl_0_218
+ wl_0_219 wl_0_220 wl_0_221 wl_0_222 wl_0_223 wl_0_224 wl_0_225
+ wl_0_226 wl_0_227 wl_0_228 wl_0_229 wl_0_230 wl_0_231 wl_0_232
+ wl_0_233 wl_0_234 wl_0_235 wl_0_236 wl_0_237 wl_0_238 wl_0_239
+ wl_0_240 wl_0_241 wl_0_242 wl_0_243 wl_0_244 wl_0_245 wl_0_246
+ wl_0_247 wl_0_248 wl_0_249 wl_0_250 wl_0_251 wl_0_252 wl_0_253
+ wl_0_254 wl_0_255 vdd gnd
* INOUT : rbl_bl_0_0 
* INOUT : rbl_br_0_0 
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INOUT : bl_0_24 
* INOUT : br_0_24 
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INPUT : rbl_wl_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* INPUT : wl_0_32 
* INPUT : wl_0_33 
* INPUT : wl_0_34 
* INPUT : wl_0_35 
* INPUT : wl_0_36 
* INPUT : wl_0_37 
* INPUT : wl_0_38 
* INPUT : wl_0_39 
* INPUT : wl_0_40 
* INPUT : wl_0_41 
* INPUT : wl_0_42 
* INPUT : wl_0_43 
* INPUT : wl_0_44 
* INPUT : wl_0_45 
* INPUT : wl_0_46 
* INPUT : wl_0_47 
* INPUT : wl_0_48 
* INPUT : wl_0_49 
* INPUT : wl_0_50 
* INPUT : wl_0_51 
* INPUT : wl_0_52 
* INPUT : wl_0_53 
* INPUT : wl_0_54 
* INPUT : wl_0_55 
* INPUT : wl_0_56 
* INPUT : wl_0_57 
* INPUT : wl_0_58 
* INPUT : wl_0_59 
* INPUT : wl_0_60 
* INPUT : wl_0_61 
* INPUT : wl_0_62 
* INPUT : wl_0_63 
* INPUT : wl_0_64 
* INPUT : wl_0_65 
* INPUT : wl_0_66 
* INPUT : wl_0_67 
* INPUT : wl_0_68 
* INPUT : wl_0_69 
* INPUT : wl_0_70 
* INPUT : wl_0_71 
* INPUT : wl_0_72 
* INPUT : wl_0_73 
* INPUT : wl_0_74 
* INPUT : wl_0_75 
* INPUT : wl_0_76 
* INPUT : wl_0_77 
* INPUT : wl_0_78 
* INPUT : wl_0_79 
* INPUT : wl_0_80 
* INPUT : wl_0_81 
* INPUT : wl_0_82 
* INPUT : wl_0_83 
* INPUT : wl_0_84 
* INPUT : wl_0_85 
* INPUT : wl_0_86 
* INPUT : wl_0_87 
* INPUT : wl_0_88 
* INPUT : wl_0_89 
* INPUT : wl_0_90 
* INPUT : wl_0_91 
* INPUT : wl_0_92 
* INPUT : wl_0_93 
* INPUT : wl_0_94 
* INPUT : wl_0_95 
* INPUT : wl_0_96 
* INPUT : wl_0_97 
* INPUT : wl_0_98 
* INPUT : wl_0_99 
* INPUT : wl_0_100 
* INPUT : wl_0_101 
* INPUT : wl_0_102 
* INPUT : wl_0_103 
* INPUT : wl_0_104 
* INPUT : wl_0_105 
* INPUT : wl_0_106 
* INPUT : wl_0_107 
* INPUT : wl_0_108 
* INPUT : wl_0_109 
* INPUT : wl_0_110 
* INPUT : wl_0_111 
* INPUT : wl_0_112 
* INPUT : wl_0_113 
* INPUT : wl_0_114 
* INPUT : wl_0_115 
* INPUT : wl_0_116 
* INPUT : wl_0_117 
* INPUT : wl_0_118 
* INPUT : wl_0_119 
* INPUT : wl_0_120 
* INPUT : wl_0_121 
* INPUT : wl_0_122 
* INPUT : wl_0_123 
* INPUT : wl_0_124 
* INPUT : wl_0_125 
* INPUT : wl_0_126 
* INPUT : wl_0_127 
* INPUT : wl_0_128 
* INPUT : wl_0_129 
* INPUT : wl_0_130 
* INPUT : wl_0_131 
* INPUT : wl_0_132 
* INPUT : wl_0_133 
* INPUT : wl_0_134 
* INPUT : wl_0_135 
* INPUT : wl_0_136 
* INPUT : wl_0_137 
* INPUT : wl_0_138 
* INPUT : wl_0_139 
* INPUT : wl_0_140 
* INPUT : wl_0_141 
* INPUT : wl_0_142 
* INPUT : wl_0_143 
* INPUT : wl_0_144 
* INPUT : wl_0_145 
* INPUT : wl_0_146 
* INPUT : wl_0_147 
* INPUT : wl_0_148 
* INPUT : wl_0_149 
* INPUT : wl_0_150 
* INPUT : wl_0_151 
* INPUT : wl_0_152 
* INPUT : wl_0_153 
* INPUT : wl_0_154 
* INPUT : wl_0_155 
* INPUT : wl_0_156 
* INPUT : wl_0_157 
* INPUT : wl_0_158 
* INPUT : wl_0_159 
* INPUT : wl_0_160 
* INPUT : wl_0_161 
* INPUT : wl_0_162 
* INPUT : wl_0_163 
* INPUT : wl_0_164 
* INPUT : wl_0_165 
* INPUT : wl_0_166 
* INPUT : wl_0_167 
* INPUT : wl_0_168 
* INPUT : wl_0_169 
* INPUT : wl_0_170 
* INPUT : wl_0_171 
* INPUT : wl_0_172 
* INPUT : wl_0_173 
* INPUT : wl_0_174 
* INPUT : wl_0_175 
* INPUT : wl_0_176 
* INPUT : wl_0_177 
* INPUT : wl_0_178 
* INPUT : wl_0_179 
* INPUT : wl_0_180 
* INPUT : wl_0_181 
* INPUT : wl_0_182 
* INPUT : wl_0_183 
* INPUT : wl_0_184 
* INPUT : wl_0_185 
* INPUT : wl_0_186 
* INPUT : wl_0_187 
* INPUT : wl_0_188 
* INPUT : wl_0_189 
* INPUT : wl_0_190 
* INPUT : wl_0_191 
* INPUT : wl_0_192 
* INPUT : wl_0_193 
* INPUT : wl_0_194 
* INPUT : wl_0_195 
* INPUT : wl_0_196 
* INPUT : wl_0_197 
* INPUT : wl_0_198 
* INPUT : wl_0_199 
* INPUT : wl_0_200 
* INPUT : wl_0_201 
* INPUT : wl_0_202 
* INPUT : wl_0_203 
* INPUT : wl_0_204 
* INPUT : wl_0_205 
* INPUT : wl_0_206 
* INPUT : wl_0_207 
* INPUT : wl_0_208 
* INPUT : wl_0_209 
* INPUT : wl_0_210 
* INPUT : wl_0_211 
* INPUT : wl_0_212 
* INPUT : wl_0_213 
* INPUT : wl_0_214 
* INPUT : wl_0_215 
* INPUT : wl_0_216 
* INPUT : wl_0_217 
* INPUT : wl_0_218 
* INPUT : wl_0_219 
* INPUT : wl_0_220 
* INPUT : wl_0_221 
* INPUT : wl_0_222 
* INPUT : wl_0_223 
* INPUT : wl_0_224 
* INPUT : wl_0_225 
* INPUT : wl_0_226 
* INPUT : wl_0_227 
* INPUT : wl_0_228 
* INPUT : wl_0_229 
* INPUT : wl_0_230 
* INPUT : wl_0_231 
* INPUT : wl_0_232 
* INPUT : wl_0_233 
* INPUT : wl_0_234 
* INPUT : wl_0_235 
* INPUT : wl_0_236 
* INPUT : wl_0_237 
* INPUT : wl_0_238 
* INPUT : wl_0_239 
* INPUT : wl_0_240 
* INPUT : wl_0_241 
* INPUT : wl_0_242 
* INPUT : wl_0_243 
* INPUT : wl_0_244 
* INPUT : wl_0_245 
* INPUT : wl_0_246 
* INPUT : wl_0_247 
* INPUT : wl_0_248 
* INPUT : wl_0_249 
* INPUT : wl_0_250 
* INPUT : wl_0_251 
* INPUT : wl_0_252 
* INPUT : wl_0_253 
* INPUT : wl_0_254 
* INPUT : wl_0_255 
* POWER : vdd 
* GROUND: gnd 
* rows: 256 cols: 32
* rbl: [1, 0] left_rbl: [0] right_rbl: []
Xbitcell_array
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4
+ wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13
+ wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21
+ wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29
+ wl_0_30 wl_0_31 wl_0_32 wl_0_33 wl_0_34 wl_0_35 wl_0_36 wl_0_37
+ wl_0_38 wl_0_39 wl_0_40 wl_0_41 wl_0_42 wl_0_43 wl_0_44 wl_0_45
+ wl_0_46 wl_0_47 wl_0_48 wl_0_49 wl_0_50 wl_0_51 wl_0_52 wl_0_53
+ wl_0_54 wl_0_55 wl_0_56 wl_0_57 wl_0_58 wl_0_59 wl_0_60 wl_0_61
+ wl_0_62 wl_0_63 wl_0_64 wl_0_65 wl_0_66 wl_0_67 wl_0_68 wl_0_69
+ wl_0_70 wl_0_71 wl_0_72 wl_0_73 wl_0_74 wl_0_75 wl_0_76 wl_0_77
+ wl_0_78 wl_0_79 wl_0_80 wl_0_81 wl_0_82 wl_0_83 wl_0_84 wl_0_85
+ wl_0_86 wl_0_87 wl_0_88 wl_0_89 wl_0_90 wl_0_91 wl_0_92 wl_0_93
+ wl_0_94 wl_0_95 wl_0_96 wl_0_97 wl_0_98 wl_0_99 wl_0_100 wl_0_101
+ wl_0_102 wl_0_103 wl_0_104 wl_0_105 wl_0_106 wl_0_107 wl_0_108
+ wl_0_109 wl_0_110 wl_0_111 wl_0_112 wl_0_113 wl_0_114 wl_0_115
+ wl_0_116 wl_0_117 wl_0_118 wl_0_119 wl_0_120 wl_0_121 wl_0_122
+ wl_0_123 wl_0_124 wl_0_125 wl_0_126 wl_0_127 wl_0_128 wl_0_129
+ wl_0_130 wl_0_131 wl_0_132 wl_0_133 wl_0_134 wl_0_135 wl_0_136
+ wl_0_137 wl_0_138 wl_0_139 wl_0_140 wl_0_141 wl_0_142 wl_0_143
+ wl_0_144 wl_0_145 wl_0_146 wl_0_147 wl_0_148 wl_0_149 wl_0_150
+ wl_0_151 wl_0_152 wl_0_153 wl_0_154 wl_0_155 wl_0_156 wl_0_157
+ wl_0_158 wl_0_159 wl_0_160 wl_0_161 wl_0_162 wl_0_163 wl_0_164
+ wl_0_165 wl_0_166 wl_0_167 wl_0_168 wl_0_169 wl_0_170 wl_0_171
+ wl_0_172 wl_0_173 wl_0_174 wl_0_175 wl_0_176 wl_0_177 wl_0_178
+ wl_0_179 wl_0_180 wl_0_181 wl_0_182 wl_0_183 wl_0_184 wl_0_185
+ wl_0_186 wl_0_187 wl_0_188 wl_0_189 wl_0_190 wl_0_191 wl_0_192
+ wl_0_193 wl_0_194 wl_0_195 wl_0_196 wl_0_197 wl_0_198 wl_0_199
+ wl_0_200 wl_0_201 wl_0_202 wl_0_203 wl_0_204 wl_0_205 wl_0_206
+ wl_0_207 wl_0_208 wl_0_209 wl_0_210 wl_0_211 wl_0_212 wl_0_213
+ wl_0_214 wl_0_215 wl_0_216 wl_0_217 wl_0_218 wl_0_219 wl_0_220
+ wl_0_221 wl_0_222 wl_0_223 wl_0_224 wl_0_225 wl_0_226 wl_0_227
+ wl_0_228 wl_0_229 wl_0_230 wl_0_231 wl_0_232 wl_0_233 wl_0_234
+ wl_0_235 wl_0_236 wl_0_237 wl_0_238 wl_0_239 wl_0_240 wl_0_241
+ wl_0_242 wl_0_243 wl_0_244 wl_0_245 wl_0_246 wl_0_247 wl_0_248
+ wl_0_249 wl_0_250 wl_0_251 wl_0_252 wl_0_253 wl_0_254 wl_0_255 vdd gnd
+ sram_32b_256_1rw_freepdk45_bitcell_array
Xreplica_col_0
+ rbl_bl_0_0 rbl_br_0_0 rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4
+ wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13
+ wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21
+ wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29
+ wl_0_30 wl_0_31 wl_0_32 wl_0_33 wl_0_34 wl_0_35 wl_0_36 wl_0_37
+ wl_0_38 wl_0_39 wl_0_40 wl_0_41 wl_0_42 wl_0_43 wl_0_44 wl_0_45
+ wl_0_46 wl_0_47 wl_0_48 wl_0_49 wl_0_50 wl_0_51 wl_0_52 wl_0_53
+ wl_0_54 wl_0_55 wl_0_56 wl_0_57 wl_0_58 wl_0_59 wl_0_60 wl_0_61
+ wl_0_62 wl_0_63 wl_0_64 wl_0_65 wl_0_66 wl_0_67 wl_0_68 wl_0_69
+ wl_0_70 wl_0_71 wl_0_72 wl_0_73 wl_0_74 wl_0_75 wl_0_76 wl_0_77
+ wl_0_78 wl_0_79 wl_0_80 wl_0_81 wl_0_82 wl_0_83 wl_0_84 wl_0_85
+ wl_0_86 wl_0_87 wl_0_88 wl_0_89 wl_0_90 wl_0_91 wl_0_92 wl_0_93
+ wl_0_94 wl_0_95 wl_0_96 wl_0_97 wl_0_98 wl_0_99 wl_0_100 wl_0_101
+ wl_0_102 wl_0_103 wl_0_104 wl_0_105 wl_0_106 wl_0_107 wl_0_108
+ wl_0_109 wl_0_110 wl_0_111 wl_0_112 wl_0_113 wl_0_114 wl_0_115
+ wl_0_116 wl_0_117 wl_0_118 wl_0_119 wl_0_120 wl_0_121 wl_0_122
+ wl_0_123 wl_0_124 wl_0_125 wl_0_126 wl_0_127 wl_0_128 wl_0_129
+ wl_0_130 wl_0_131 wl_0_132 wl_0_133 wl_0_134 wl_0_135 wl_0_136
+ wl_0_137 wl_0_138 wl_0_139 wl_0_140 wl_0_141 wl_0_142 wl_0_143
+ wl_0_144 wl_0_145 wl_0_146 wl_0_147 wl_0_148 wl_0_149 wl_0_150
+ wl_0_151 wl_0_152 wl_0_153 wl_0_154 wl_0_155 wl_0_156 wl_0_157
+ wl_0_158 wl_0_159 wl_0_160 wl_0_161 wl_0_162 wl_0_163 wl_0_164
+ wl_0_165 wl_0_166 wl_0_167 wl_0_168 wl_0_169 wl_0_170 wl_0_171
+ wl_0_172 wl_0_173 wl_0_174 wl_0_175 wl_0_176 wl_0_177 wl_0_178
+ wl_0_179 wl_0_180 wl_0_181 wl_0_182 wl_0_183 wl_0_184 wl_0_185
+ wl_0_186 wl_0_187 wl_0_188 wl_0_189 wl_0_190 wl_0_191 wl_0_192
+ wl_0_193 wl_0_194 wl_0_195 wl_0_196 wl_0_197 wl_0_198 wl_0_199
+ wl_0_200 wl_0_201 wl_0_202 wl_0_203 wl_0_204 wl_0_205 wl_0_206
+ wl_0_207 wl_0_208 wl_0_209 wl_0_210 wl_0_211 wl_0_212 wl_0_213
+ wl_0_214 wl_0_215 wl_0_216 wl_0_217 wl_0_218 wl_0_219 wl_0_220
+ wl_0_221 wl_0_222 wl_0_223 wl_0_224 wl_0_225 wl_0_226 wl_0_227
+ wl_0_228 wl_0_229 wl_0_230 wl_0_231 wl_0_232 wl_0_233 wl_0_234
+ wl_0_235 wl_0_236 wl_0_237 wl_0_238 wl_0_239 wl_0_240 wl_0_241
+ wl_0_242 wl_0_243 wl_0_244 wl_0_245 wl_0_246 wl_0_247 wl_0_248
+ wl_0_249 wl_0_250 wl_0_251 wl_0_252 wl_0_253 wl_0_254 wl_0_255 vdd gnd
+ sram_32b_256_1rw_freepdk45_replica_column
Xdummy_row_0
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 rbl_wl_0_0 vdd gnd
+ sram_32b_256_1rw_freepdk45_dummy_array
.ENDS sram_32b_256_1rw_freepdk45_replica_bitcell_array

.SUBCKT sram_32b_256_1rw_freepdk45_dummy_array_3
+ bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24
+ wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 wl_0_32
+ wl_0_33 wl_0_34 wl_0_35 wl_0_36 wl_0_37 wl_0_38 wl_0_39 wl_0_40
+ wl_0_41 wl_0_42 wl_0_43 wl_0_44 wl_0_45 wl_0_46 wl_0_47 wl_0_48
+ wl_0_49 wl_0_50 wl_0_51 wl_0_52 wl_0_53 wl_0_54 wl_0_55 wl_0_56
+ wl_0_57 wl_0_58 wl_0_59 wl_0_60 wl_0_61 wl_0_62 wl_0_63 wl_0_64
+ wl_0_65 wl_0_66 wl_0_67 wl_0_68 wl_0_69 wl_0_70 wl_0_71 wl_0_72
+ wl_0_73 wl_0_74 wl_0_75 wl_0_76 wl_0_77 wl_0_78 wl_0_79 wl_0_80
+ wl_0_81 wl_0_82 wl_0_83 wl_0_84 wl_0_85 wl_0_86 wl_0_87 wl_0_88
+ wl_0_89 wl_0_90 wl_0_91 wl_0_92 wl_0_93 wl_0_94 wl_0_95 wl_0_96
+ wl_0_97 wl_0_98 wl_0_99 wl_0_100 wl_0_101 wl_0_102 wl_0_103 wl_0_104
+ wl_0_105 wl_0_106 wl_0_107 wl_0_108 wl_0_109 wl_0_110 wl_0_111
+ wl_0_112 wl_0_113 wl_0_114 wl_0_115 wl_0_116 wl_0_117 wl_0_118
+ wl_0_119 wl_0_120 wl_0_121 wl_0_122 wl_0_123 wl_0_124 wl_0_125
+ wl_0_126 wl_0_127 wl_0_128 wl_0_129 wl_0_130 wl_0_131 wl_0_132
+ wl_0_133 wl_0_134 wl_0_135 wl_0_136 wl_0_137 wl_0_138 wl_0_139
+ wl_0_140 wl_0_141 wl_0_142 wl_0_143 wl_0_144 wl_0_145 wl_0_146
+ wl_0_147 wl_0_148 wl_0_149 wl_0_150 wl_0_151 wl_0_152 wl_0_153
+ wl_0_154 wl_0_155 wl_0_156 wl_0_157 wl_0_158 wl_0_159 wl_0_160
+ wl_0_161 wl_0_162 wl_0_163 wl_0_164 wl_0_165 wl_0_166 wl_0_167
+ wl_0_168 wl_0_169 wl_0_170 wl_0_171 wl_0_172 wl_0_173 wl_0_174
+ wl_0_175 wl_0_176 wl_0_177 wl_0_178 wl_0_179 wl_0_180 wl_0_181
+ wl_0_182 wl_0_183 wl_0_184 wl_0_185 wl_0_186 wl_0_187 wl_0_188
+ wl_0_189 wl_0_190 wl_0_191 wl_0_192 wl_0_193 wl_0_194 wl_0_195
+ wl_0_196 wl_0_197 wl_0_198 wl_0_199 wl_0_200 wl_0_201 wl_0_202
+ wl_0_203 wl_0_204 wl_0_205 wl_0_206 wl_0_207 wl_0_208 wl_0_209
+ wl_0_210 wl_0_211 wl_0_212 wl_0_213 wl_0_214 wl_0_215 wl_0_216
+ wl_0_217 wl_0_218 wl_0_219 wl_0_220 wl_0_221 wl_0_222 wl_0_223
+ wl_0_224 wl_0_225 wl_0_226 wl_0_227 wl_0_228 wl_0_229 wl_0_230
+ wl_0_231 wl_0_232 wl_0_233 wl_0_234 wl_0_235 wl_0_236 wl_0_237
+ wl_0_238 wl_0_239 wl_0_240 wl_0_241 wl_0_242 wl_0_243 wl_0_244
+ wl_0_245 wl_0_246 wl_0_247 wl_0_248 wl_0_249 wl_0_250 wl_0_251
+ wl_0_252 wl_0_253 wl_0_254 wl_0_255 wl_0_256 wl_0_257 wl_0_258 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* INPUT : wl_0_32 
* INPUT : wl_0_33 
* INPUT : wl_0_34 
* INPUT : wl_0_35 
* INPUT : wl_0_36 
* INPUT : wl_0_37 
* INPUT : wl_0_38 
* INPUT : wl_0_39 
* INPUT : wl_0_40 
* INPUT : wl_0_41 
* INPUT : wl_0_42 
* INPUT : wl_0_43 
* INPUT : wl_0_44 
* INPUT : wl_0_45 
* INPUT : wl_0_46 
* INPUT : wl_0_47 
* INPUT : wl_0_48 
* INPUT : wl_0_49 
* INPUT : wl_0_50 
* INPUT : wl_0_51 
* INPUT : wl_0_52 
* INPUT : wl_0_53 
* INPUT : wl_0_54 
* INPUT : wl_0_55 
* INPUT : wl_0_56 
* INPUT : wl_0_57 
* INPUT : wl_0_58 
* INPUT : wl_0_59 
* INPUT : wl_0_60 
* INPUT : wl_0_61 
* INPUT : wl_0_62 
* INPUT : wl_0_63 
* INPUT : wl_0_64 
* INPUT : wl_0_65 
* INPUT : wl_0_66 
* INPUT : wl_0_67 
* INPUT : wl_0_68 
* INPUT : wl_0_69 
* INPUT : wl_0_70 
* INPUT : wl_0_71 
* INPUT : wl_0_72 
* INPUT : wl_0_73 
* INPUT : wl_0_74 
* INPUT : wl_0_75 
* INPUT : wl_0_76 
* INPUT : wl_0_77 
* INPUT : wl_0_78 
* INPUT : wl_0_79 
* INPUT : wl_0_80 
* INPUT : wl_0_81 
* INPUT : wl_0_82 
* INPUT : wl_0_83 
* INPUT : wl_0_84 
* INPUT : wl_0_85 
* INPUT : wl_0_86 
* INPUT : wl_0_87 
* INPUT : wl_0_88 
* INPUT : wl_0_89 
* INPUT : wl_0_90 
* INPUT : wl_0_91 
* INPUT : wl_0_92 
* INPUT : wl_0_93 
* INPUT : wl_0_94 
* INPUT : wl_0_95 
* INPUT : wl_0_96 
* INPUT : wl_0_97 
* INPUT : wl_0_98 
* INPUT : wl_0_99 
* INPUT : wl_0_100 
* INPUT : wl_0_101 
* INPUT : wl_0_102 
* INPUT : wl_0_103 
* INPUT : wl_0_104 
* INPUT : wl_0_105 
* INPUT : wl_0_106 
* INPUT : wl_0_107 
* INPUT : wl_0_108 
* INPUT : wl_0_109 
* INPUT : wl_0_110 
* INPUT : wl_0_111 
* INPUT : wl_0_112 
* INPUT : wl_0_113 
* INPUT : wl_0_114 
* INPUT : wl_0_115 
* INPUT : wl_0_116 
* INPUT : wl_0_117 
* INPUT : wl_0_118 
* INPUT : wl_0_119 
* INPUT : wl_0_120 
* INPUT : wl_0_121 
* INPUT : wl_0_122 
* INPUT : wl_0_123 
* INPUT : wl_0_124 
* INPUT : wl_0_125 
* INPUT : wl_0_126 
* INPUT : wl_0_127 
* INPUT : wl_0_128 
* INPUT : wl_0_129 
* INPUT : wl_0_130 
* INPUT : wl_0_131 
* INPUT : wl_0_132 
* INPUT : wl_0_133 
* INPUT : wl_0_134 
* INPUT : wl_0_135 
* INPUT : wl_0_136 
* INPUT : wl_0_137 
* INPUT : wl_0_138 
* INPUT : wl_0_139 
* INPUT : wl_0_140 
* INPUT : wl_0_141 
* INPUT : wl_0_142 
* INPUT : wl_0_143 
* INPUT : wl_0_144 
* INPUT : wl_0_145 
* INPUT : wl_0_146 
* INPUT : wl_0_147 
* INPUT : wl_0_148 
* INPUT : wl_0_149 
* INPUT : wl_0_150 
* INPUT : wl_0_151 
* INPUT : wl_0_152 
* INPUT : wl_0_153 
* INPUT : wl_0_154 
* INPUT : wl_0_155 
* INPUT : wl_0_156 
* INPUT : wl_0_157 
* INPUT : wl_0_158 
* INPUT : wl_0_159 
* INPUT : wl_0_160 
* INPUT : wl_0_161 
* INPUT : wl_0_162 
* INPUT : wl_0_163 
* INPUT : wl_0_164 
* INPUT : wl_0_165 
* INPUT : wl_0_166 
* INPUT : wl_0_167 
* INPUT : wl_0_168 
* INPUT : wl_0_169 
* INPUT : wl_0_170 
* INPUT : wl_0_171 
* INPUT : wl_0_172 
* INPUT : wl_0_173 
* INPUT : wl_0_174 
* INPUT : wl_0_175 
* INPUT : wl_0_176 
* INPUT : wl_0_177 
* INPUT : wl_0_178 
* INPUT : wl_0_179 
* INPUT : wl_0_180 
* INPUT : wl_0_181 
* INPUT : wl_0_182 
* INPUT : wl_0_183 
* INPUT : wl_0_184 
* INPUT : wl_0_185 
* INPUT : wl_0_186 
* INPUT : wl_0_187 
* INPUT : wl_0_188 
* INPUT : wl_0_189 
* INPUT : wl_0_190 
* INPUT : wl_0_191 
* INPUT : wl_0_192 
* INPUT : wl_0_193 
* INPUT : wl_0_194 
* INPUT : wl_0_195 
* INPUT : wl_0_196 
* INPUT : wl_0_197 
* INPUT : wl_0_198 
* INPUT : wl_0_199 
* INPUT : wl_0_200 
* INPUT : wl_0_201 
* INPUT : wl_0_202 
* INPUT : wl_0_203 
* INPUT : wl_0_204 
* INPUT : wl_0_205 
* INPUT : wl_0_206 
* INPUT : wl_0_207 
* INPUT : wl_0_208 
* INPUT : wl_0_209 
* INPUT : wl_0_210 
* INPUT : wl_0_211 
* INPUT : wl_0_212 
* INPUT : wl_0_213 
* INPUT : wl_0_214 
* INPUT : wl_0_215 
* INPUT : wl_0_216 
* INPUT : wl_0_217 
* INPUT : wl_0_218 
* INPUT : wl_0_219 
* INPUT : wl_0_220 
* INPUT : wl_0_221 
* INPUT : wl_0_222 
* INPUT : wl_0_223 
* INPUT : wl_0_224 
* INPUT : wl_0_225 
* INPUT : wl_0_226 
* INPUT : wl_0_227 
* INPUT : wl_0_228 
* INPUT : wl_0_229 
* INPUT : wl_0_230 
* INPUT : wl_0_231 
* INPUT : wl_0_232 
* INPUT : wl_0_233 
* INPUT : wl_0_234 
* INPUT : wl_0_235 
* INPUT : wl_0_236 
* INPUT : wl_0_237 
* INPUT : wl_0_238 
* INPUT : wl_0_239 
* INPUT : wl_0_240 
* INPUT : wl_0_241 
* INPUT : wl_0_242 
* INPUT : wl_0_243 
* INPUT : wl_0_244 
* INPUT : wl_0_245 
* INPUT : wl_0_246 
* INPUT : wl_0_247 
* INPUT : wl_0_248 
* INPUT : wl_0_249 
* INPUT : wl_0_250 
* INPUT : wl_0_251 
* INPUT : wl_0_252 
* INPUT : wl_0_253 
* INPUT : wl_0_254 
* INPUT : wl_0_255 
* INPUT : wl_0_256 
* INPUT : wl_0_257 
* INPUT : wl_0_258 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r1_c0
+ bl_0_0 br_0_0 wl_0_1 vdd gnd
+ dummy_cell_1rw
Xbit_r2_c0
+ bl_0_0 br_0_0 wl_0_2 vdd gnd
+ dummy_cell_1rw
Xbit_r3_c0
+ bl_0_0 br_0_0 wl_0_3 vdd gnd
+ dummy_cell_1rw
Xbit_r4_c0
+ bl_0_0 br_0_0 wl_0_4 vdd gnd
+ dummy_cell_1rw
Xbit_r5_c0
+ bl_0_0 br_0_0 wl_0_5 vdd gnd
+ dummy_cell_1rw
Xbit_r6_c0
+ bl_0_0 br_0_0 wl_0_6 vdd gnd
+ dummy_cell_1rw
Xbit_r7_c0
+ bl_0_0 br_0_0 wl_0_7 vdd gnd
+ dummy_cell_1rw
Xbit_r8_c0
+ bl_0_0 br_0_0 wl_0_8 vdd gnd
+ dummy_cell_1rw
Xbit_r9_c0
+ bl_0_0 br_0_0 wl_0_9 vdd gnd
+ dummy_cell_1rw
Xbit_r10_c0
+ bl_0_0 br_0_0 wl_0_10 vdd gnd
+ dummy_cell_1rw
Xbit_r11_c0
+ bl_0_0 br_0_0 wl_0_11 vdd gnd
+ dummy_cell_1rw
Xbit_r12_c0
+ bl_0_0 br_0_0 wl_0_12 vdd gnd
+ dummy_cell_1rw
Xbit_r13_c0
+ bl_0_0 br_0_0 wl_0_13 vdd gnd
+ dummy_cell_1rw
Xbit_r14_c0
+ bl_0_0 br_0_0 wl_0_14 vdd gnd
+ dummy_cell_1rw
Xbit_r15_c0
+ bl_0_0 br_0_0 wl_0_15 vdd gnd
+ dummy_cell_1rw
Xbit_r16_c0
+ bl_0_0 br_0_0 wl_0_16 vdd gnd
+ dummy_cell_1rw
Xbit_r17_c0
+ bl_0_0 br_0_0 wl_0_17 vdd gnd
+ dummy_cell_1rw
Xbit_r18_c0
+ bl_0_0 br_0_0 wl_0_18 vdd gnd
+ dummy_cell_1rw
Xbit_r19_c0
+ bl_0_0 br_0_0 wl_0_19 vdd gnd
+ dummy_cell_1rw
Xbit_r20_c0
+ bl_0_0 br_0_0 wl_0_20 vdd gnd
+ dummy_cell_1rw
Xbit_r21_c0
+ bl_0_0 br_0_0 wl_0_21 vdd gnd
+ dummy_cell_1rw
Xbit_r22_c0
+ bl_0_0 br_0_0 wl_0_22 vdd gnd
+ dummy_cell_1rw
Xbit_r23_c0
+ bl_0_0 br_0_0 wl_0_23 vdd gnd
+ dummy_cell_1rw
Xbit_r24_c0
+ bl_0_0 br_0_0 wl_0_24 vdd gnd
+ dummy_cell_1rw
Xbit_r25_c0
+ bl_0_0 br_0_0 wl_0_25 vdd gnd
+ dummy_cell_1rw
Xbit_r26_c0
+ bl_0_0 br_0_0 wl_0_26 vdd gnd
+ dummy_cell_1rw
Xbit_r27_c0
+ bl_0_0 br_0_0 wl_0_27 vdd gnd
+ dummy_cell_1rw
Xbit_r28_c0
+ bl_0_0 br_0_0 wl_0_28 vdd gnd
+ dummy_cell_1rw
Xbit_r29_c0
+ bl_0_0 br_0_0 wl_0_29 vdd gnd
+ dummy_cell_1rw
Xbit_r30_c0
+ bl_0_0 br_0_0 wl_0_30 vdd gnd
+ dummy_cell_1rw
Xbit_r31_c0
+ bl_0_0 br_0_0 wl_0_31 vdd gnd
+ dummy_cell_1rw
Xbit_r32_c0
+ bl_0_0 br_0_0 wl_0_32 vdd gnd
+ dummy_cell_1rw
Xbit_r33_c0
+ bl_0_0 br_0_0 wl_0_33 vdd gnd
+ dummy_cell_1rw
Xbit_r34_c0
+ bl_0_0 br_0_0 wl_0_34 vdd gnd
+ dummy_cell_1rw
Xbit_r35_c0
+ bl_0_0 br_0_0 wl_0_35 vdd gnd
+ dummy_cell_1rw
Xbit_r36_c0
+ bl_0_0 br_0_0 wl_0_36 vdd gnd
+ dummy_cell_1rw
Xbit_r37_c0
+ bl_0_0 br_0_0 wl_0_37 vdd gnd
+ dummy_cell_1rw
Xbit_r38_c0
+ bl_0_0 br_0_0 wl_0_38 vdd gnd
+ dummy_cell_1rw
Xbit_r39_c0
+ bl_0_0 br_0_0 wl_0_39 vdd gnd
+ dummy_cell_1rw
Xbit_r40_c0
+ bl_0_0 br_0_0 wl_0_40 vdd gnd
+ dummy_cell_1rw
Xbit_r41_c0
+ bl_0_0 br_0_0 wl_0_41 vdd gnd
+ dummy_cell_1rw
Xbit_r42_c0
+ bl_0_0 br_0_0 wl_0_42 vdd gnd
+ dummy_cell_1rw
Xbit_r43_c0
+ bl_0_0 br_0_0 wl_0_43 vdd gnd
+ dummy_cell_1rw
Xbit_r44_c0
+ bl_0_0 br_0_0 wl_0_44 vdd gnd
+ dummy_cell_1rw
Xbit_r45_c0
+ bl_0_0 br_0_0 wl_0_45 vdd gnd
+ dummy_cell_1rw
Xbit_r46_c0
+ bl_0_0 br_0_0 wl_0_46 vdd gnd
+ dummy_cell_1rw
Xbit_r47_c0
+ bl_0_0 br_0_0 wl_0_47 vdd gnd
+ dummy_cell_1rw
Xbit_r48_c0
+ bl_0_0 br_0_0 wl_0_48 vdd gnd
+ dummy_cell_1rw
Xbit_r49_c0
+ bl_0_0 br_0_0 wl_0_49 vdd gnd
+ dummy_cell_1rw
Xbit_r50_c0
+ bl_0_0 br_0_0 wl_0_50 vdd gnd
+ dummy_cell_1rw
Xbit_r51_c0
+ bl_0_0 br_0_0 wl_0_51 vdd gnd
+ dummy_cell_1rw
Xbit_r52_c0
+ bl_0_0 br_0_0 wl_0_52 vdd gnd
+ dummy_cell_1rw
Xbit_r53_c0
+ bl_0_0 br_0_0 wl_0_53 vdd gnd
+ dummy_cell_1rw
Xbit_r54_c0
+ bl_0_0 br_0_0 wl_0_54 vdd gnd
+ dummy_cell_1rw
Xbit_r55_c0
+ bl_0_0 br_0_0 wl_0_55 vdd gnd
+ dummy_cell_1rw
Xbit_r56_c0
+ bl_0_0 br_0_0 wl_0_56 vdd gnd
+ dummy_cell_1rw
Xbit_r57_c0
+ bl_0_0 br_0_0 wl_0_57 vdd gnd
+ dummy_cell_1rw
Xbit_r58_c0
+ bl_0_0 br_0_0 wl_0_58 vdd gnd
+ dummy_cell_1rw
Xbit_r59_c0
+ bl_0_0 br_0_0 wl_0_59 vdd gnd
+ dummy_cell_1rw
Xbit_r60_c0
+ bl_0_0 br_0_0 wl_0_60 vdd gnd
+ dummy_cell_1rw
Xbit_r61_c0
+ bl_0_0 br_0_0 wl_0_61 vdd gnd
+ dummy_cell_1rw
Xbit_r62_c0
+ bl_0_0 br_0_0 wl_0_62 vdd gnd
+ dummy_cell_1rw
Xbit_r63_c0
+ bl_0_0 br_0_0 wl_0_63 vdd gnd
+ dummy_cell_1rw
Xbit_r64_c0
+ bl_0_0 br_0_0 wl_0_64 vdd gnd
+ dummy_cell_1rw
Xbit_r65_c0
+ bl_0_0 br_0_0 wl_0_65 vdd gnd
+ dummy_cell_1rw
Xbit_r66_c0
+ bl_0_0 br_0_0 wl_0_66 vdd gnd
+ dummy_cell_1rw
Xbit_r67_c0
+ bl_0_0 br_0_0 wl_0_67 vdd gnd
+ dummy_cell_1rw
Xbit_r68_c0
+ bl_0_0 br_0_0 wl_0_68 vdd gnd
+ dummy_cell_1rw
Xbit_r69_c0
+ bl_0_0 br_0_0 wl_0_69 vdd gnd
+ dummy_cell_1rw
Xbit_r70_c0
+ bl_0_0 br_0_0 wl_0_70 vdd gnd
+ dummy_cell_1rw
Xbit_r71_c0
+ bl_0_0 br_0_0 wl_0_71 vdd gnd
+ dummy_cell_1rw
Xbit_r72_c0
+ bl_0_0 br_0_0 wl_0_72 vdd gnd
+ dummy_cell_1rw
Xbit_r73_c0
+ bl_0_0 br_0_0 wl_0_73 vdd gnd
+ dummy_cell_1rw
Xbit_r74_c0
+ bl_0_0 br_0_0 wl_0_74 vdd gnd
+ dummy_cell_1rw
Xbit_r75_c0
+ bl_0_0 br_0_0 wl_0_75 vdd gnd
+ dummy_cell_1rw
Xbit_r76_c0
+ bl_0_0 br_0_0 wl_0_76 vdd gnd
+ dummy_cell_1rw
Xbit_r77_c0
+ bl_0_0 br_0_0 wl_0_77 vdd gnd
+ dummy_cell_1rw
Xbit_r78_c0
+ bl_0_0 br_0_0 wl_0_78 vdd gnd
+ dummy_cell_1rw
Xbit_r79_c0
+ bl_0_0 br_0_0 wl_0_79 vdd gnd
+ dummy_cell_1rw
Xbit_r80_c0
+ bl_0_0 br_0_0 wl_0_80 vdd gnd
+ dummy_cell_1rw
Xbit_r81_c0
+ bl_0_0 br_0_0 wl_0_81 vdd gnd
+ dummy_cell_1rw
Xbit_r82_c0
+ bl_0_0 br_0_0 wl_0_82 vdd gnd
+ dummy_cell_1rw
Xbit_r83_c0
+ bl_0_0 br_0_0 wl_0_83 vdd gnd
+ dummy_cell_1rw
Xbit_r84_c0
+ bl_0_0 br_0_0 wl_0_84 vdd gnd
+ dummy_cell_1rw
Xbit_r85_c0
+ bl_0_0 br_0_0 wl_0_85 vdd gnd
+ dummy_cell_1rw
Xbit_r86_c0
+ bl_0_0 br_0_0 wl_0_86 vdd gnd
+ dummy_cell_1rw
Xbit_r87_c0
+ bl_0_0 br_0_0 wl_0_87 vdd gnd
+ dummy_cell_1rw
Xbit_r88_c0
+ bl_0_0 br_0_0 wl_0_88 vdd gnd
+ dummy_cell_1rw
Xbit_r89_c0
+ bl_0_0 br_0_0 wl_0_89 vdd gnd
+ dummy_cell_1rw
Xbit_r90_c0
+ bl_0_0 br_0_0 wl_0_90 vdd gnd
+ dummy_cell_1rw
Xbit_r91_c0
+ bl_0_0 br_0_0 wl_0_91 vdd gnd
+ dummy_cell_1rw
Xbit_r92_c0
+ bl_0_0 br_0_0 wl_0_92 vdd gnd
+ dummy_cell_1rw
Xbit_r93_c0
+ bl_0_0 br_0_0 wl_0_93 vdd gnd
+ dummy_cell_1rw
Xbit_r94_c0
+ bl_0_0 br_0_0 wl_0_94 vdd gnd
+ dummy_cell_1rw
Xbit_r95_c0
+ bl_0_0 br_0_0 wl_0_95 vdd gnd
+ dummy_cell_1rw
Xbit_r96_c0
+ bl_0_0 br_0_0 wl_0_96 vdd gnd
+ dummy_cell_1rw
Xbit_r97_c0
+ bl_0_0 br_0_0 wl_0_97 vdd gnd
+ dummy_cell_1rw
Xbit_r98_c0
+ bl_0_0 br_0_0 wl_0_98 vdd gnd
+ dummy_cell_1rw
Xbit_r99_c0
+ bl_0_0 br_0_0 wl_0_99 vdd gnd
+ dummy_cell_1rw
Xbit_r100_c0
+ bl_0_0 br_0_0 wl_0_100 vdd gnd
+ dummy_cell_1rw
Xbit_r101_c0
+ bl_0_0 br_0_0 wl_0_101 vdd gnd
+ dummy_cell_1rw
Xbit_r102_c0
+ bl_0_0 br_0_0 wl_0_102 vdd gnd
+ dummy_cell_1rw
Xbit_r103_c0
+ bl_0_0 br_0_0 wl_0_103 vdd gnd
+ dummy_cell_1rw
Xbit_r104_c0
+ bl_0_0 br_0_0 wl_0_104 vdd gnd
+ dummy_cell_1rw
Xbit_r105_c0
+ bl_0_0 br_0_0 wl_0_105 vdd gnd
+ dummy_cell_1rw
Xbit_r106_c0
+ bl_0_0 br_0_0 wl_0_106 vdd gnd
+ dummy_cell_1rw
Xbit_r107_c0
+ bl_0_0 br_0_0 wl_0_107 vdd gnd
+ dummy_cell_1rw
Xbit_r108_c0
+ bl_0_0 br_0_0 wl_0_108 vdd gnd
+ dummy_cell_1rw
Xbit_r109_c0
+ bl_0_0 br_0_0 wl_0_109 vdd gnd
+ dummy_cell_1rw
Xbit_r110_c0
+ bl_0_0 br_0_0 wl_0_110 vdd gnd
+ dummy_cell_1rw
Xbit_r111_c0
+ bl_0_0 br_0_0 wl_0_111 vdd gnd
+ dummy_cell_1rw
Xbit_r112_c0
+ bl_0_0 br_0_0 wl_0_112 vdd gnd
+ dummy_cell_1rw
Xbit_r113_c0
+ bl_0_0 br_0_0 wl_0_113 vdd gnd
+ dummy_cell_1rw
Xbit_r114_c0
+ bl_0_0 br_0_0 wl_0_114 vdd gnd
+ dummy_cell_1rw
Xbit_r115_c0
+ bl_0_0 br_0_0 wl_0_115 vdd gnd
+ dummy_cell_1rw
Xbit_r116_c0
+ bl_0_0 br_0_0 wl_0_116 vdd gnd
+ dummy_cell_1rw
Xbit_r117_c0
+ bl_0_0 br_0_0 wl_0_117 vdd gnd
+ dummy_cell_1rw
Xbit_r118_c0
+ bl_0_0 br_0_0 wl_0_118 vdd gnd
+ dummy_cell_1rw
Xbit_r119_c0
+ bl_0_0 br_0_0 wl_0_119 vdd gnd
+ dummy_cell_1rw
Xbit_r120_c0
+ bl_0_0 br_0_0 wl_0_120 vdd gnd
+ dummy_cell_1rw
Xbit_r121_c0
+ bl_0_0 br_0_0 wl_0_121 vdd gnd
+ dummy_cell_1rw
Xbit_r122_c0
+ bl_0_0 br_0_0 wl_0_122 vdd gnd
+ dummy_cell_1rw
Xbit_r123_c0
+ bl_0_0 br_0_0 wl_0_123 vdd gnd
+ dummy_cell_1rw
Xbit_r124_c0
+ bl_0_0 br_0_0 wl_0_124 vdd gnd
+ dummy_cell_1rw
Xbit_r125_c0
+ bl_0_0 br_0_0 wl_0_125 vdd gnd
+ dummy_cell_1rw
Xbit_r126_c0
+ bl_0_0 br_0_0 wl_0_126 vdd gnd
+ dummy_cell_1rw
Xbit_r127_c0
+ bl_0_0 br_0_0 wl_0_127 vdd gnd
+ dummy_cell_1rw
Xbit_r128_c0
+ bl_0_0 br_0_0 wl_0_128 vdd gnd
+ dummy_cell_1rw
Xbit_r129_c0
+ bl_0_0 br_0_0 wl_0_129 vdd gnd
+ dummy_cell_1rw
Xbit_r130_c0
+ bl_0_0 br_0_0 wl_0_130 vdd gnd
+ dummy_cell_1rw
Xbit_r131_c0
+ bl_0_0 br_0_0 wl_0_131 vdd gnd
+ dummy_cell_1rw
Xbit_r132_c0
+ bl_0_0 br_0_0 wl_0_132 vdd gnd
+ dummy_cell_1rw
Xbit_r133_c0
+ bl_0_0 br_0_0 wl_0_133 vdd gnd
+ dummy_cell_1rw
Xbit_r134_c0
+ bl_0_0 br_0_0 wl_0_134 vdd gnd
+ dummy_cell_1rw
Xbit_r135_c0
+ bl_0_0 br_0_0 wl_0_135 vdd gnd
+ dummy_cell_1rw
Xbit_r136_c0
+ bl_0_0 br_0_0 wl_0_136 vdd gnd
+ dummy_cell_1rw
Xbit_r137_c0
+ bl_0_0 br_0_0 wl_0_137 vdd gnd
+ dummy_cell_1rw
Xbit_r138_c0
+ bl_0_0 br_0_0 wl_0_138 vdd gnd
+ dummy_cell_1rw
Xbit_r139_c0
+ bl_0_0 br_0_0 wl_0_139 vdd gnd
+ dummy_cell_1rw
Xbit_r140_c0
+ bl_0_0 br_0_0 wl_0_140 vdd gnd
+ dummy_cell_1rw
Xbit_r141_c0
+ bl_0_0 br_0_0 wl_0_141 vdd gnd
+ dummy_cell_1rw
Xbit_r142_c0
+ bl_0_0 br_0_0 wl_0_142 vdd gnd
+ dummy_cell_1rw
Xbit_r143_c0
+ bl_0_0 br_0_0 wl_0_143 vdd gnd
+ dummy_cell_1rw
Xbit_r144_c0
+ bl_0_0 br_0_0 wl_0_144 vdd gnd
+ dummy_cell_1rw
Xbit_r145_c0
+ bl_0_0 br_0_0 wl_0_145 vdd gnd
+ dummy_cell_1rw
Xbit_r146_c0
+ bl_0_0 br_0_0 wl_0_146 vdd gnd
+ dummy_cell_1rw
Xbit_r147_c0
+ bl_0_0 br_0_0 wl_0_147 vdd gnd
+ dummy_cell_1rw
Xbit_r148_c0
+ bl_0_0 br_0_0 wl_0_148 vdd gnd
+ dummy_cell_1rw
Xbit_r149_c0
+ bl_0_0 br_0_0 wl_0_149 vdd gnd
+ dummy_cell_1rw
Xbit_r150_c0
+ bl_0_0 br_0_0 wl_0_150 vdd gnd
+ dummy_cell_1rw
Xbit_r151_c0
+ bl_0_0 br_0_0 wl_0_151 vdd gnd
+ dummy_cell_1rw
Xbit_r152_c0
+ bl_0_0 br_0_0 wl_0_152 vdd gnd
+ dummy_cell_1rw
Xbit_r153_c0
+ bl_0_0 br_0_0 wl_0_153 vdd gnd
+ dummy_cell_1rw
Xbit_r154_c0
+ bl_0_0 br_0_0 wl_0_154 vdd gnd
+ dummy_cell_1rw
Xbit_r155_c0
+ bl_0_0 br_0_0 wl_0_155 vdd gnd
+ dummy_cell_1rw
Xbit_r156_c0
+ bl_0_0 br_0_0 wl_0_156 vdd gnd
+ dummy_cell_1rw
Xbit_r157_c0
+ bl_0_0 br_0_0 wl_0_157 vdd gnd
+ dummy_cell_1rw
Xbit_r158_c0
+ bl_0_0 br_0_0 wl_0_158 vdd gnd
+ dummy_cell_1rw
Xbit_r159_c0
+ bl_0_0 br_0_0 wl_0_159 vdd gnd
+ dummy_cell_1rw
Xbit_r160_c0
+ bl_0_0 br_0_0 wl_0_160 vdd gnd
+ dummy_cell_1rw
Xbit_r161_c0
+ bl_0_0 br_0_0 wl_0_161 vdd gnd
+ dummy_cell_1rw
Xbit_r162_c0
+ bl_0_0 br_0_0 wl_0_162 vdd gnd
+ dummy_cell_1rw
Xbit_r163_c0
+ bl_0_0 br_0_0 wl_0_163 vdd gnd
+ dummy_cell_1rw
Xbit_r164_c0
+ bl_0_0 br_0_0 wl_0_164 vdd gnd
+ dummy_cell_1rw
Xbit_r165_c0
+ bl_0_0 br_0_0 wl_0_165 vdd gnd
+ dummy_cell_1rw
Xbit_r166_c0
+ bl_0_0 br_0_0 wl_0_166 vdd gnd
+ dummy_cell_1rw
Xbit_r167_c0
+ bl_0_0 br_0_0 wl_0_167 vdd gnd
+ dummy_cell_1rw
Xbit_r168_c0
+ bl_0_0 br_0_0 wl_0_168 vdd gnd
+ dummy_cell_1rw
Xbit_r169_c0
+ bl_0_0 br_0_0 wl_0_169 vdd gnd
+ dummy_cell_1rw
Xbit_r170_c0
+ bl_0_0 br_0_0 wl_0_170 vdd gnd
+ dummy_cell_1rw
Xbit_r171_c0
+ bl_0_0 br_0_0 wl_0_171 vdd gnd
+ dummy_cell_1rw
Xbit_r172_c0
+ bl_0_0 br_0_0 wl_0_172 vdd gnd
+ dummy_cell_1rw
Xbit_r173_c0
+ bl_0_0 br_0_0 wl_0_173 vdd gnd
+ dummy_cell_1rw
Xbit_r174_c0
+ bl_0_0 br_0_0 wl_0_174 vdd gnd
+ dummy_cell_1rw
Xbit_r175_c0
+ bl_0_0 br_0_0 wl_0_175 vdd gnd
+ dummy_cell_1rw
Xbit_r176_c0
+ bl_0_0 br_0_0 wl_0_176 vdd gnd
+ dummy_cell_1rw
Xbit_r177_c0
+ bl_0_0 br_0_0 wl_0_177 vdd gnd
+ dummy_cell_1rw
Xbit_r178_c0
+ bl_0_0 br_0_0 wl_0_178 vdd gnd
+ dummy_cell_1rw
Xbit_r179_c0
+ bl_0_0 br_0_0 wl_0_179 vdd gnd
+ dummy_cell_1rw
Xbit_r180_c0
+ bl_0_0 br_0_0 wl_0_180 vdd gnd
+ dummy_cell_1rw
Xbit_r181_c0
+ bl_0_0 br_0_0 wl_0_181 vdd gnd
+ dummy_cell_1rw
Xbit_r182_c0
+ bl_0_0 br_0_0 wl_0_182 vdd gnd
+ dummy_cell_1rw
Xbit_r183_c0
+ bl_0_0 br_0_0 wl_0_183 vdd gnd
+ dummy_cell_1rw
Xbit_r184_c0
+ bl_0_0 br_0_0 wl_0_184 vdd gnd
+ dummy_cell_1rw
Xbit_r185_c0
+ bl_0_0 br_0_0 wl_0_185 vdd gnd
+ dummy_cell_1rw
Xbit_r186_c0
+ bl_0_0 br_0_0 wl_0_186 vdd gnd
+ dummy_cell_1rw
Xbit_r187_c0
+ bl_0_0 br_0_0 wl_0_187 vdd gnd
+ dummy_cell_1rw
Xbit_r188_c0
+ bl_0_0 br_0_0 wl_0_188 vdd gnd
+ dummy_cell_1rw
Xbit_r189_c0
+ bl_0_0 br_0_0 wl_0_189 vdd gnd
+ dummy_cell_1rw
Xbit_r190_c0
+ bl_0_0 br_0_0 wl_0_190 vdd gnd
+ dummy_cell_1rw
Xbit_r191_c0
+ bl_0_0 br_0_0 wl_0_191 vdd gnd
+ dummy_cell_1rw
Xbit_r192_c0
+ bl_0_0 br_0_0 wl_0_192 vdd gnd
+ dummy_cell_1rw
Xbit_r193_c0
+ bl_0_0 br_0_0 wl_0_193 vdd gnd
+ dummy_cell_1rw
Xbit_r194_c0
+ bl_0_0 br_0_0 wl_0_194 vdd gnd
+ dummy_cell_1rw
Xbit_r195_c0
+ bl_0_0 br_0_0 wl_0_195 vdd gnd
+ dummy_cell_1rw
Xbit_r196_c0
+ bl_0_0 br_0_0 wl_0_196 vdd gnd
+ dummy_cell_1rw
Xbit_r197_c0
+ bl_0_0 br_0_0 wl_0_197 vdd gnd
+ dummy_cell_1rw
Xbit_r198_c0
+ bl_0_0 br_0_0 wl_0_198 vdd gnd
+ dummy_cell_1rw
Xbit_r199_c0
+ bl_0_0 br_0_0 wl_0_199 vdd gnd
+ dummy_cell_1rw
Xbit_r200_c0
+ bl_0_0 br_0_0 wl_0_200 vdd gnd
+ dummy_cell_1rw
Xbit_r201_c0
+ bl_0_0 br_0_0 wl_0_201 vdd gnd
+ dummy_cell_1rw
Xbit_r202_c0
+ bl_0_0 br_0_0 wl_0_202 vdd gnd
+ dummy_cell_1rw
Xbit_r203_c0
+ bl_0_0 br_0_0 wl_0_203 vdd gnd
+ dummy_cell_1rw
Xbit_r204_c0
+ bl_0_0 br_0_0 wl_0_204 vdd gnd
+ dummy_cell_1rw
Xbit_r205_c0
+ bl_0_0 br_0_0 wl_0_205 vdd gnd
+ dummy_cell_1rw
Xbit_r206_c0
+ bl_0_0 br_0_0 wl_0_206 vdd gnd
+ dummy_cell_1rw
Xbit_r207_c0
+ bl_0_0 br_0_0 wl_0_207 vdd gnd
+ dummy_cell_1rw
Xbit_r208_c0
+ bl_0_0 br_0_0 wl_0_208 vdd gnd
+ dummy_cell_1rw
Xbit_r209_c0
+ bl_0_0 br_0_0 wl_0_209 vdd gnd
+ dummy_cell_1rw
Xbit_r210_c0
+ bl_0_0 br_0_0 wl_0_210 vdd gnd
+ dummy_cell_1rw
Xbit_r211_c0
+ bl_0_0 br_0_0 wl_0_211 vdd gnd
+ dummy_cell_1rw
Xbit_r212_c0
+ bl_0_0 br_0_0 wl_0_212 vdd gnd
+ dummy_cell_1rw
Xbit_r213_c0
+ bl_0_0 br_0_0 wl_0_213 vdd gnd
+ dummy_cell_1rw
Xbit_r214_c0
+ bl_0_0 br_0_0 wl_0_214 vdd gnd
+ dummy_cell_1rw
Xbit_r215_c0
+ bl_0_0 br_0_0 wl_0_215 vdd gnd
+ dummy_cell_1rw
Xbit_r216_c0
+ bl_0_0 br_0_0 wl_0_216 vdd gnd
+ dummy_cell_1rw
Xbit_r217_c0
+ bl_0_0 br_0_0 wl_0_217 vdd gnd
+ dummy_cell_1rw
Xbit_r218_c0
+ bl_0_0 br_0_0 wl_0_218 vdd gnd
+ dummy_cell_1rw
Xbit_r219_c0
+ bl_0_0 br_0_0 wl_0_219 vdd gnd
+ dummy_cell_1rw
Xbit_r220_c0
+ bl_0_0 br_0_0 wl_0_220 vdd gnd
+ dummy_cell_1rw
Xbit_r221_c0
+ bl_0_0 br_0_0 wl_0_221 vdd gnd
+ dummy_cell_1rw
Xbit_r222_c0
+ bl_0_0 br_0_0 wl_0_222 vdd gnd
+ dummy_cell_1rw
Xbit_r223_c0
+ bl_0_0 br_0_0 wl_0_223 vdd gnd
+ dummy_cell_1rw
Xbit_r224_c0
+ bl_0_0 br_0_0 wl_0_224 vdd gnd
+ dummy_cell_1rw
Xbit_r225_c0
+ bl_0_0 br_0_0 wl_0_225 vdd gnd
+ dummy_cell_1rw
Xbit_r226_c0
+ bl_0_0 br_0_0 wl_0_226 vdd gnd
+ dummy_cell_1rw
Xbit_r227_c0
+ bl_0_0 br_0_0 wl_0_227 vdd gnd
+ dummy_cell_1rw
Xbit_r228_c0
+ bl_0_0 br_0_0 wl_0_228 vdd gnd
+ dummy_cell_1rw
Xbit_r229_c0
+ bl_0_0 br_0_0 wl_0_229 vdd gnd
+ dummy_cell_1rw
Xbit_r230_c0
+ bl_0_0 br_0_0 wl_0_230 vdd gnd
+ dummy_cell_1rw
Xbit_r231_c0
+ bl_0_0 br_0_0 wl_0_231 vdd gnd
+ dummy_cell_1rw
Xbit_r232_c0
+ bl_0_0 br_0_0 wl_0_232 vdd gnd
+ dummy_cell_1rw
Xbit_r233_c0
+ bl_0_0 br_0_0 wl_0_233 vdd gnd
+ dummy_cell_1rw
Xbit_r234_c0
+ bl_0_0 br_0_0 wl_0_234 vdd gnd
+ dummy_cell_1rw
Xbit_r235_c0
+ bl_0_0 br_0_0 wl_0_235 vdd gnd
+ dummy_cell_1rw
Xbit_r236_c0
+ bl_0_0 br_0_0 wl_0_236 vdd gnd
+ dummy_cell_1rw
Xbit_r237_c0
+ bl_0_0 br_0_0 wl_0_237 vdd gnd
+ dummy_cell_1rw
Xbit_r238_c0
+ bl_0_0 br_0_0 wl_0_238 vdd gnd
+ dummy_cell_1rw
Xbit_r239_c0
+ bl_0_0 br_0_0 wl_0_239 vdd gnd
+ dummy_cell_1rw
Xbit_r240_c0
+ bl_0_0 br_0_0 wl_0_240 vdd gnd
+ dummy_cell_1rw
Xbit_r241_c0
+ bl_0_0 br_0_0 wl_0_241 vdd gnd
+ dummy_cell_1rw
Xbit_r242_c0
+ bl_0_0 br_0_0 wl_0_242 vdd gnd
+ dummy_cell_1rw
Xbit_r243_c0
+ bl_0_0 br_0_0 wl_0_243 vdd gnd
+ dummy_cell_1rw
Xbit_r244_c0
+ bl_0_0 br_0_0 wl_0_244 vdd gnd
+ dummy_cell_1rw
Xbit_r245_c0
+ bl_0_0 br_0_0 wl_0_245 vdd gnd
+ dummy_cell_1rw
Xbit_r246_c0
+ bl_0_0 br_0_0 wl_0_246 vdd gnd
+ dummy_cell_1rw
Xbit_r247_c0
+ bl_0_0 br_0_0 wl_0_247 vdd gnd
+ dummy_cell_1rw
Xbit_r248_c0
+ bl_0_0 br_0_0 wl_0_248 vdd gnd
+ dummy_cell_1rw
Xbit_r249_c0
+ bl_0_0 br_0_0 wl_0_249 vdd gnd
+ dummy_cell_1rw
Xbit_r250_c0
+ bl_0_0 br_0_0 wl_0_250 vdd gnd
+ dummy_cell_1rw
Xbit_r251_c0
+ bl_0_0 br_0_0 wl_0_251 vdd gnd
+ dummy_cell_1rw
Xbit_r252_c0
+ bl_0_0 br_0_0 wl_0_252 vdd gnd
+ dummy_cell_1rw
Xbit_r253_c0
+ bl_0_0 br_0_0 wl_0_253 vdd gnd
+ dummy_cell_1rw
Xbit_r254_c0
+ bl_0_0 br_0_0 wl_0_254 vdd gnd
+ dummy_cell_1rw
Xbit_r255_c0
+ bl_0_0 br_0_0 wl_0_255 vdd gnd
+ dummy_cell_1rw
Xbit_r256_c0
+ bl_0_0 br_0_0 wl_0_256 vdd gnd
+ dummy_cell_1rw
Xbit_r257_c0
+ bl_0_0 br_0_0 wl_0_257 vdd gnd
+ dummy_cell_1rw
Xbit_r258_c0
+ bl_0_0 br_0_0 wl_0_258 vdd gnd
+ dummy_cell_1rw
.ENDS sram_32b_256_1rw_freepdk45_dummy_array_3

.SUBCKT sram_32b_256_1rw_freepdk45_capped_replica_bitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 rbl_wl_0_0 wl_0_0
+ wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18
+ wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26
+ wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 wl_0_32 wl_0_33 wl_0_34
+ wl_0_35 wl_0_36 wl_0_37 wl_0_38 wl_0_39 wl_0_40 wl_0_41 wl_0_42
+ wl_0_43 wl_0_44 wl_0_45 wl_0_46 wl_0_47 wl_0_48 wl_0_49 wl_0_50
+ wl_0_51 wl_0_52 wl_0_53 wl_0_54 wl_0_55 wl_0_56 wl_0_57 wl_0_58
+ wl_0_59 wl_0_60 wl_0_61 wl_0_62 wl_0_63 wl_0_64 wl_0_65 wl_0_66
+ wl_0_67 wl_0_68 wl_0_69 wl_0_70 wl_0_71 wl_0_72 wl_0_73 wl_0_74
+ wl_0_75 wl_0_76 wl_0_77 wl_0_78 wl_0_79 wl_0_80 wl_0_81 wl_0_82
+ wl_0_83 wl_0_84 wl_0_85 wl_0_86 wl_0_87 wl_0_88 wl_0_89 wl_0_90
+ wl_0_91 wl_0_92 wl_0_93 wl_0_94 wl_0_95 wl_0_96 wl_0_97 wl_0_98
+ wl_0_99 wl_0_100 wl_0_101 wl_0_102 wl_0_103 wl_0_104 wl_0_105 wl_0_106
+ wl_0_107 wl_0_108 wl_0_109 wl_0_110 wl_0_111 wl_0_112 wl_0_113
+ wl_0_114 wl_0_115 wl_0_116 wl_0_117 wl_0_118 wl_0_119 wl_0_120
+ wl_0_121 wl_0_122 wl_0_123 wl_0_124 wl_0_125 wl_0_126 wl_0_127
+ wl_0_128 wl_0_129 wl_0_130 wl_0_131 wl_0_132 wl_0_133 wl_0_134
+ wl_0_135 wl_0_136 wl_0_137 wl_0_138 wl_0_139 wl_0_140 wl_0_141
+ wl_0_142 wl_0_143 wl_0_144 wl_0_145 wl_0_146 wl_0_147 wl_0_148
+ wl_0_149 wl_0_150 wl_0_151 wl_0_152 wl_0_153 wl_0_154 wl_0_155
+ wl_0_156 wl_0_157 wl_0_158 wl_0_159 wl_0_160 wl_0_161 wl_0_162
+ wl_0_163 wl_0_164 wl_0_165 wl_0_166 wl_0_167 wl_0_168 wl_0_169
+ wl_0_170 wl_0_171 wl_0_172 wl_0_173 wl_0_174 wl_0_175 wl_0_176
+ wl_0_177 wl_0_178 wl_0_179 wl_0_180 wl_0_181 wl_0_182 wl_0_183
+ wl_0_184 wl_0_185 wl_0_186 wl_0_187 wl_0_188 wl_0_189 wl_0_190
+ wl_0_191 wl_0_192 wl_0_193 wl_0_194 wl_0_195 wl_0_196 wl_0_197
+ wl_0_198 wl_0_199 wl_0_200 wl_0_201 wl_0_202 wl_0_203 wl_0_204
+ wl_0_205 wl_0_206 wl_0_207 wl_0_208 wl_0_209 wl_0_210 wl_0_211
+ wl_0_212 wl_0_213 wl_0_214 wl_0_215 wl_0_216 wl_0_217 wl_0_218
+ wl_0_219 wl_0_220 wl_0_221 wl_0_222 wl_0_223 wl_0_224 wl_0_225
+ wl_0_226 wl_0_227 wl_0_228 wl_0_229 wl_0_230 wl_0_231 wl_0_232
+ wl_0_233 wl_0_234 wl_0_235 wl_0_236 wl_0_237 wl_0_238 wl_0_239
+ wl_0_240 wl_0_241 wl_0_242 wl_0_243 wl_0_244 wl_0_245 wl_0_246
+ wl_0_247 wl_0_248 wl_0_249 wl_0_250 wl_0_251 wl_0_252 wl_0_253
+ wl_0_254 wl_0_255 vdd gnd
* INOUT : rbl_bl_0_0 
* INOUT : rbl_br_0_0 
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INOUT : bl_0_24 
* INOUT : br_0_24 
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INPUT : rbl_wl_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* INPUT : wl_0_32 
* INPUT : wl_0_33 
* INPUT : wl_0_34 
* INPUT : wl_0_35 
* INPUT : wl_0_36 
* INPUT : wl_0_37 
* INPUT : wl_0_38 
* INPUT : wl_0_39 
* INPUT : wl_0_40 
* INPUT : wl_0_41 
* INPUT : wl_0_42 
* INPUT : wl_0_43 
* INPUT : wl_0_44 
* INPUT : wl_0_45 
* INPUT : wl_0_46 
* INPUT : wl_0_47 
* INPUT : wl_0_48 
* INPUT : wl_0_49 
* INPUT : wl_0_50 
* INPUT : wl_0_51 
* INPUT : wl_0_52 
* INPUT : wl_0_53 
* INPUT : wl_0_54 
* INPUT : wl_0_55 
* INPUT : wl_0_56 
* INPUT : wl_0_57 
* INPUT : wl_0_58 
* INPUT : wl_0_59 
* INPUT : wl_0_60 
* INPUT : wl_0_61 
* INPUT : wl_0_62 
* INPUT : wl_0_63 
* INPUT : wl_0_64 
* INPUT : wl_0_65 
* INPUT : wl_0_66 
* INPUT : wl_0_67 
* INPUT : wl_0_68 
* INPUT : wl_0_69 
* INPUT : wl_0_70 
* INPUT : wl_0_71 
* INPUT : wl_0_72 
* INPUT : wl_0_73 
* INPUT : wl_0_74 
* INPUT : wl_0_75 
* INPUT : wl_0_76 
* INPUT : wl_0_77 
* INPUT : wl_0_78 
* INPUT : wl_0_79 
* INPUT : wl_0_80 
* INPUT : wl_0_81 
* INPUT : wl_0_82 
* INPUT : wl_0_83 
* INPUT : wl_0_84 
* INPUT : wl_0_85 
* INPUT : wl_0_86 
* INPUT : wl_0_87 
* INPUT : wl_0_88 
* INPUT : wl_0_89 
* INPUT : wl_0_90 
* INPUT : wl_0_91 
* INPUT : wl_0_92 
* INPUT : wl_0_93 
* INPUT : wl_0_94 
* INPUT : wl_0_95 
* INPUT : wl_0_96 
* INPUT : wl_0_97 
* INPUT : wl_0_98 
* INPUT : wl_0_99 
* INPUT : wl_0_100 
* INPUT : wl_0_101 
* INPUT : wl_0_102 
* INPUT : wl_0_103 
* INPUT : wl_0_104 
* INPUT : wl_0_105 
* INPUT : wl_0_106 
* INPUT : wl_0_107 
* INPUT : wl_0_108 
* INPUT : wl_0_109 
* INPUT : wl_0_110 
* INPUT : wl_0_111 
* INPUT : wl_0_112 
* INPUT : wl_0_113 
* INPUT : wl_0_114 
* INPUT : wl_0_115 
* INPUT : wl_0_116 
* INPUT : wl_0_117 
* INPUT : wl_0_118 
* INPUT : wl_0_119 
* INPUT : wl_0_120 
* INPUT : wl_0_121 
* INPUT : wl_0_122 
* INPUT : wl_0_123 
* INPUT : wl_0_124 
* INPUT : wl_0_125 
* INPUT : wl_0_126 
* INPUT : wl_0_127 
* INPUT : wl_0_128 
* INPUT : wl_0_129 
* INPUT : wl_0_130 
* INPUT : wl_0_131 
* INPUT : wl_0_132 
* INPUT : wl_0_133 
* INPUT : wl_0_134 
* INPUT : wl_0_135 
* INPUT : wl_0_136 
* INPUT : wl_0_137 
* INPUT : wl_0_138 
* INPUT : wl_0_139 
* INPUT : wl_0_140 
* INPUT : wl_0_141 
* INPUT : wl_0_142 
* INPUT : wl_0_143 
* INPUT : wl_0_144 
* INPUT : wl_0_145 
* INPUT : wl_0_146 
* INPUT : wl_0_147 
* INPUT : wl_0_148 
* INPUT : wl_0_149 
* INPUT : wl_0_150 
* INPUT : wl_0_151 
* INPUT : wl_0_152 
* INPUT : wl_0_153 
* INPUT : wl_0_154 
* INPUT : wl_0_155 
* INPUT : wl_0_156 
* INPUT : wl_0_157 
* INPUT : wl_0_158 
* INPUT : wl_0_159 
* INPUT : wl_0_160 
* INPUT : wl_0_161 
* INPUT : wl_0_162 
* INPUT : wl_0_163 
* INPUT : wl_0_164 
* INPUT : wl_0_165 
* INPUT : wl_0_166 
* INPUT : wl_0_167 
* INPUT : wl_0_168 
* INPUT : wl_0_169 
* INPUT : wl_0_170 
* INPUT : wl_0_171 
* INPUT : wl_0_172 
* INPUT : wl_0_173 
* INPUT : wl_0_174 
* INPUT : wl_0_175 
* INPUT : wl_0_176 
* INPUT : wl_0_177 
* INPUT : wl_0_178 
* INPUT : wl_0_179 
* INPUT : wl_0_180 
* INPUT : wl_0_181 
* INPUT : wl_0_182 
* INPUT : wl_0_183 
* INPUT : wl_0_184 
* INPUT : wl_0_185 
* INPUT : wl_0_186 
* INPUT : wl_0_187 
* INPUT : wl_0_188 
* INPUT : wl_0_189 
* INPUT : wl_0_190 
* INPUT : wl_0_191 
* INPUT : wl_0_192 
* INPUT : wl_0_193 
* INPUT : wl_0_194 
* INPUT : wl_0_195 
* INPUT : wl_0_196 
* INPUT : wl_0_197 
* INPUT : wl_0_198 
* INPUT : wl_0_199 
* INPUT : wl_0_200 
* INPUT : wl_0_201 
* INPUT : wl_0_202 
* INPUT : wl_0_203 
* INPUT : wl_0_204 
* INPUT : wl_0_205 
* INPUT : wl_0_206 
* INPUT : wl_0_207 
* INPUT : wl_0_208 
* INPUT : wl_0_209 
* INPUT : wl_0_210 
* INPUT : wl_0_211 
* INPUT : wl_0_212 
* INPUT : wl_0_213 
* INPUT : wl_0_214 
* INPUT : wl_0_215 
* INPUT : wl_0_216 
* INPUT : wl_0_217 
* INPUT : wl_0_218 
* INPUT : wl_0_219 
* INPUT : wl_0_220 
* INPUT : wl_0_221 
* INPUT : wl_0_222 
* INPUT : wl_0_223 
* INPUT : wl_0_224 
* INPUT : wl_0_225 
* INPUT : wl_0_226 
* INPUT : wl_0_227 
* INPUT : wl_0_228 
* INPUT : wl_0_229 
* INPUT : wl_0_230 
* INPUT : wl_0_231 
* INPUT : wl_0_232 
* INPUT : wl_0_233 
* INPUT : wl_0_234 
* INPUT : wl_0_235 
* INPUT : wl_0_236 
* INPUT : wl_0_237 
* INPUT : wl_0_238 
* INPUT : wl_0_239 
* INPUT : wl_0_240 
* INPUT : wl_0_241 
* INPUT : wl_0_242 
* INPUT : wl_0_243 
* INPUT : wl_0_244 
* INPUT : wl_0_245 
* INPUT : wl_0_246 
* INPUT : wl_0_247 
* INPUT : wl_0_248 
* INPUT : wl_0_249 
* INPUT : wl_0_250 
* INPUT : wl_0_251 
* INPUT : wl_0_252 
* INPUT : wl_0_253 
* INPUT : wl_0_254 
* INPUT : wl_0_255 
* POWER : vdd 
* GROUND: gnd 
* rows: 256 cols: 32
* rbl: [1, 0] left_rbl: [0] right_rbl: []
Xreplica_bitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 rbl_wl_0_0 wl_0_0
+ wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18
+ wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26
+ wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 wl_0_32 wl_0_33 wl_0_34
+ wl_0_35 wl_0_36 wl_0_37 wl_0_38 wl_0_39 wl_0_40 wl_0_41 wl_0_42
+ wl_0_43 wl_0_44 wl_0_45 wl_0_46 wl_0_47 wl_0_48 wl_0_49 wl_0_50
+ wl_0_51 wl_0_52 wl_0_53 wl_0_54 wl_0_55 wl_0_56 wl_0_57 wl_0_58
+ wl_0_59 wl_0_60 wl_0_61 wl_0_62 wl_0_63 wl_0_64 wl_0_65 wl_0_66
+ wl_0_67 wl_0_68 wl_0_69 wl_0_70 wl_0_71 wl_0_72 wl_0_73 wl_0_74
+ wl_0_75 wl_0_76 wl_0_77 wl_0_78 wl_0_79 wl_0_80 wl_0_81 wl_0_82
+ wl_0_83 wl_0_84 wl_0_85 wl_0_86 wl_0_87 wl_0_88 wl_0_89 wl_0_90
+ wl_0_91 wl_0_92 wl_0_93 wl_0_94 wl_0_95 wl_0_96 wl_0_97 wl_0_98
+ wl_0_99 wl_0_100 wl_0_101 wl_0_102 wl_0_103 wl_0_104 wl_0_105 wl_0_106
+ wl_0_107 wl_0_108 wl_0_109 wl_0_110 wl_0_111 wl_0_112 wl_0_113
+ wl_0_114 wl_0_115 wl_0_116 wl_0_117 wl_0_118 wl_0_119 wl_0_120
+ wl_0_121 wl_0_122 wl_0_123 wl_0_124 wl_0_125 wl_0_126 wl_0_127
+ wl_0_128 wl_0_129 wl_0_130 wl_0_131 wl_0_132 wl_0_133 wl_0_134
+ wl_0_135 wl_0_136 wl_0_137 wl_0_138 wl_0_139 wl_0_140 wl_0_141
+ wl_0_142 wl_0_143 wl_0_144 wl_0_145 wl_0_146 wl_0_147 wl_0_148
+ wl_0_149 wl_0_150 wl_0_151 wl_0_152 wl_0_153 wl_0_154 wl_0_155
+ wl_0_156 wl_0_157 wl_0_158 wl_0_159 wl_0_160 wl_0_161 wl_0_162
+ wl_0_163 wl_0_164 wl_0_165 wl_0_166 wl_0_167 wl_0_168 wl_0_169
+ wl_0_170 wl_0_171 wl_0_172 wl_0_173 wl_0_174 wl_0_175 wl_0_176
+ wl_0_177 wl_0_178 wl_0_179 wl_0_180 wl_0_181 wl_0_182 wl_0_183
+ wl_0_184 wl_0_185 wl_0_186 wl_0_187 wl_0_188 wl_0_189 wl_0_190
+ wl_0_191 wl_0_192 wl_0_193 wl_0_194 wl_0_195 wl_0_196 wl_0_197
+ wl_0_198 wl_0_199 wl_0_200 wl_0_201 wl_0_202 wl_0_203 wl_0_204
+ wl_0_205 wl_0_206 wl_0_207 wl_0_208 wl_0_209 wl_0_210 wl_0_211
+ wl_0_212 wl_0_213 wl_0_214 wl_0_215 wl_0_216 wl_0_217 wl_0_218
+ wl_0_219 wl_0_220 wl_0_221 wl_0_222 wl_0_223 wl_0_224 wl_0_225
+ wl_0_226 wl_0_227 wl_0_228 wl_0_229 wl_0_230 wl_0_231 wl_0_232
+ wl_0_233 wl_0_234 wl_0_235 wl_0_236 wl_0_237 wl_0_238 wl_0_239
+ wl_0_240 wl_0_241 wl_0_242 wl_0_243 wl_0_244 wl_0_245 wl_0_246
+ wl_0_247 wl_0_248 wl_0_249 wl_0_250 wl_0_251 wl_0_252 wl_0_253
+ wl_0_254 wl_0_255 vdd gnd
+ sram_32b_256_1rw_freepdk45_replica_bitcell_array
Xdummy_row_bot
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 gnd vdd gnd
+ sram_32b_256_1rw_freepdk45_dummy_array_1
Xdummy_row_top
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 gnd vdd gnd
+ sram_32b_256_1rw_freepdk45_dummy_array_0
Xdummy_col_left
+ dummy_left_bl_0_0 dummy_left_br_0_0 gnd rbl_wl_0_0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18
+ wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26
+ wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 wl_0_32 wl_0_33 wl_0_34
+ wl_0_35 wl_0_36 wl_0_37 wl_0_38 wl_0_39 wl_0_40 wl_0_41 wl_0_42
+ wl_0_43 wl_0_44 wl_0_45 wl_0_46 wl_0_47 wl_0_48 wl_0_49 wl_0_50
+ wl_0_51 wl_0_52 wl_0_53 wl_0_54 wl_0_55 wl_0_56 wl_0_57 wl_0_58
+ wl_0_59 wl_0_60 wl_0_61 wl_0_62 wl_0_63 wl_0_64 wl_0_65 wl_0_66
+ wl_0_67 wl_0_68 wl_0_69 wl_0_70 wl_0_71 wl_0_72 wl_0_73 wl_0_74
+ wl_0_75 wl_0_76 wl_0_77 wl_0_78 wl_0_79 wl_0_80 wl_0_81 wl_0_82
+ wl_0_83 wl_0_84 wl_0_85 wl_0_86 wl_0_87 wl_0_88 wl_0_89 wl_0_90
+ wl_0_91 wl_0_92 wl_0_93 wl_0_94 wl_0_95 wl_0_96 wl_0_97 wl_0_98
+ wl_0_99 wl_0_100 wl_0_101 wl_0_102 wl_0_103 wl_0_104 wl_0_105 wl_0_106
+ wl_0_107 wl_0_108 wl_0_109 wl_0_110 wl_0_111 wl_0_112 wl_0_113
+ wl_0_114 wl_0_115 wl_0_116 wl_0_117 wl_0_118 wl_0_119 wl_0_120
+ wl_0_121 wl_0_122 wl_0_123 wl_0_124 wl_0_125 wl_0_126 wl_0_127
+ wl_0_128 wl_0_129 wl_0_130 wl_0_131 wl_0_132 wl_0_133 wl_0_134
+ wl_0_135 wl_0_136 wl_0_137 wl_0_138 wl_0_139 wl_0_140 wl_0_141
+ wl_0_142 wl_0_143 wl_0_144 wl_0_145 wl_0_146 wl_0_147 wl_0_148
+ wl_0_149 wl_0_150 wl_0_151 wl_0_152 wl_0_153 wl_0_154 wl_0_155
+ wl_0_156 wl_0_157 wl_0_158 wl_0_159 wl_0_160 wl_0_161 wl_0_162
+ wl_0_163 wl_0_164 wl_0_165 wl_0_166 wl_0_167 wl_0_168 wl_0_169
+ wl_0_170 wl_0_171 wl_0_172 wl_0_173 wl_0_174 wl_0_175 wl_0_176
+ wl_0_177 wl_0_178 wl_0_179 wl_0_180 wl_0_181 wl_0_182 wl_0_183
+ wl_0_184 wl_0_185 wl_0_186 wl_0_187 wl_0_188 wl_0_189 wl_0_190
+ wl_0_191 wl_0_192 wl_0_193 wl_0_194 wl_0_195 wl_0_196 wl_0_197
+ wl_0_198 wl_0_199 wl_0_200 wl_0_201 wl_0_202 wl_0_203 wl_0_204
+ wl_0_205 wl_0_206 wl_0_207 wl_0_208 wl_0_209 wl_0_210 wl_0_211
+ wl_0_212 wl_0_213 wl_0_214 wl_0_215 wl_0_216 wl_0_217 wl_0_218
+ wl_0_219 wl_0_220 wl_0_221 wl_0_222 wl_0_223 wl_0_224 wl_0_225
+ wl_0_226 wl_0_227 wl_0_228 wl_0_229 wl_0_230 wl_0_231 wl_0_232
+ wl_0_233 wl_0_234 wl_0_235 wl_0_236 wl_0_237 wl_0_238 wl_0_239
+ wl_0_240 wl_0_241 wl_0_242 wl_0_243 wl_0_244 wl_0_245 wl_0_246
+ wl_0_247 wl_0_248 wl_0_249 wl_0_250 wl_0_251 wl_0_252 wl_0_253
+ wl_0_254 wl_0_255 gnd vdd gnd
+ sram_32b_256_1rw_freepdk45_dummy_array_2
Xdummy_col_right
+ dummy_right_bl_0_0 dummy_right_br_0_0 gnd rbl_wl_0_0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18
+ wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26
+ wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 wl_0_32 wl_0_33 wl_0_34
+ wl_0_35 wl_0_36 wl_0_37 wl_0_38 wl_0_39 wl_0_40 wl_0_41 wl_0_42
+ wl_0_43 wl_0_44 wl_0_45 wl_0_46 wl_0_47 wl_0_48 wl_0_49 wl_0_50
+ wl_0_51 wl_0_52 wl_0_53 wl_0_54 wl_0_55 wl_0_56 wl_0_57 wl_0_58
+ wl_0_59 wl_0_60 wl_0_61 wl_0_62 wl_0_63 wl_0_64 wl_0_65 wl_0_66
+ wl_0_67 wl_0_68 wl_0_69 wl_0_70 wl_0_71 wl_0_72 wl_0_73 wl_0_74
+ wl_0_75 wl_0_76 wl_0_77 wl_0_78 wl_0_79 wl_0_80 wl_0_81 wl_0_82
+ wl_0_83 wl_0_84 wl_0_85 wl_0_86 wl_0_87 wl_0_88 wl_0_89 wl_0_90
+ wl_0_91 wl_0_92 wl_0_93 wl_0_94 wl_0_95 wl_0_96 wl_0_97 wl_0_98
+ wl_0_99 wl_0_100 wl_0_101 wl_0_102 wl_0_103 wl_0_104 wl_0_105 wl_0_106
+ wl_0_107 wl_0_108 wl_0_109 wl_0_110 wl_0_111 wl_0_112 wl_0_113
+ wl_0_114 wl_0_115 wl_0_116 wl_0_117 wl_0_118 wl_0_119 wl_0_120
+ wl_0_121 wl_0_122 wl_0_123 wl_0_124 wl_0_125 wl_0_126 wl_0_127
+ wl_0_128 wl_0_129 wl_0_130 wl_0_131 wl_0_132 wl_0_133 wl_0_134
+ wl_0_135 wl_0_136 wl_0_137 wl_0_138 wl_0_139 wl_0_140 wl_0_141
+ wl_0_142 wl_0_143 wl_0_144 wl_0_145 wl_0_146 wl_0_147 wl_0_148
+ wl_0_149 wl_0_150 wl_0_151 wl_0_152 wl_0_153 wl_0_154 wl_0_155
+ wl_0_156 wl_0_157 wl_0_158 wl_0_159 wl_0_160 wl_0_161 wl_0_162
+ wl_0_163 wl_0_164 wl_0_165 wl_0_166 wl_0_167 wl_0_168 wl_0_169
+ wl_0_170 wl_0_171 wl_0_172 wl_0_173 wl_0_174 wl_0_175 wl_0_176
+ wl_0_177 wl_0_178 wl_0_179 wl_0_180 wl_0_181 wl_0_182 wl_0_183
+ wl_0_184 wl_0_185 wl_0_186 wl_0_187 wl_0_188 wl_0_189 wl_0_190
+ wl_0_191 wl_0_192 wl_0_193 wl_0_194 wl_0_195 wl_0_196 wl_0_197
+ wl_0_198 wl_0_199 wl_0_200 wl_0_201 wl_0_202 wl_0_203 wl_0_204
+ wl_0_205 wl_0_206 wl_0_207 wl_0_208 wl_0_209 wl_0_210 wl_0_211
+ wl_0_212 wl_0_213 wl_0_214 wl_0_215 wl_0_216 wl_0_217 wl_0_218
+ wl_0_219 wl_0_220 wl_0_221 wl_0_222 wl_0_223 wl_0_224 wl_0_225
+ wl_0_226 wl_0_227 wl_0_228 wl_0_229 wl_0_230 wl_0_231 wl_0_232
+ wl_0_233 wl_0_234 wl_0_235 wl_0_236 wl_0_237 wl_0_238 wl_0_239
+ wl_0_240 wl_0_241 wl_0_242 wl_0_243 wl_0_244 wl_0_245 wl_0_246
+ wl_0_247 wl_0_248 wl_0_249 wl_0_250 wl_0_251 wl_0_252 wl_0_253
+ wl_0_254 wl_0_255 gnd vdd gnd
+ sram_32b_256_1rw_freepdk45_dummy_array_3
.ENDS sram_32b_256_1rw_freepdk45_capped_replica_bitcell_array

.SUBCKT sram_32b_256_1rw_freepdk45_bank
+ dout0_0 dout0_1 dout0_2 dout0_3 dout0_4 dout0_5 dout0_6 dout0_7
+ dout0_8 dout0_9 dout0_10 dout0_11 dout0_12 dout0_13 dout0_14 dout0_15
+ dout0_16 dout0_17 dout0_18 dout0_19 dout0_20 dout0_21 dout0_22
+ dout0_23 dout0_24 dout0_25 dout0_26 dout0_27 dout0_28 dout0_29
+ dout0_30 dout0_31 rbl_bl_0_0 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5
+ din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 din0_12 din0_13 din0_14
+ din0_15 din0_16 din0_17 din0_18 din0_19 din0_20 din0_21 din0_22
+ din0_23 din0_24 din0_25 din0_26 din0_27 din0_28 din0_29 din0_30
+ din0_31 addr0_0 addr0_1 addr0_2 addr0_3 addr0_4 addr0_5 addr0_6
+ addr0_7 s_en0 p_en_bar0 w_en0 wl_en0 vdd gnd
* OUTPUT: dout0_0 
* OUTPUT: dout0_1 
* OUTPUT: dout0_2 
* OUTPUT: dout0_3 
* OUTPUT: dout0_4 
* OUTPUT: dout0_5 
* OUTPUT: dout0_6 
* OUTPUT: dout0_7 
* OUTPUT: dout0_8 
* OUTPUT: dout0_9 
* OUTPUT: dout0_10 
* OUTPUT: dout0_11 
* OUTPUT: dout0_12 
* OUTPUT: dout0_13 
* OUTPUT: dout0_14 
* OUTPUT: dout0_15 
* OUTPUT: dout0_16 
* OUTPUT: dout0_17 
* OUTPUT: dout0_18 
* OUTPUT: dout0_19 
* OUTPUT: dout0_20 
* OUTPUT: dout0_21 
* OUTPUT: dout0_22 
* OUTPUT: dout0_23 
* OUTPUT: dout0_24 
* OUTPUT: dout0_25 
* OUTPUT: dout0_26 
* OUTPUT: dout0_27 
* OUTPUT: dout0_28 
* OUTPUT: dout0_29 
* OUTPUT: dout0_30 
* OUTPUT: dout0_31 
* OUTPUT: rbl_bl_0_0 
* INPUT : din0_0 
* INPUT : din0_1 
* INPUT : din0_2 
* INPUT : din0_3 
* INPUT : din0_4 
* INPUT : din0_5 
* INPUT : din0_6 
* INPUT : din0_7 
* INPUT : din0_8 
* INPUT : din0_9 
* INPUT : din0_10 
* INPUT : din0_11 
* INPUT : din0_12 
* INPUT : din0_13 
* INPUT : din0_14 
* INPUT : din0_15 
* INPUT : din0_16 
* INPUT : din0_17 
* INPUT : din0_18 
* INPUT : din0_19 
* INPUT : din0_20 
* INPUT : din0_21 
* INPUT : din0_22 
* INPUT : din0_23 
* INPUT : din0_24 
* INPUT : din0_25 
* INPUT : din0_26 
* INPUT : din0_27 
* INPUT : din0_28 
* INPUT : din0_29 
* INPUT : din0_30 
* INPUT : din0_31 
* INPUT : addr0_0 
* INPUT : addr0_1 
* INPUT : addr0_2 
* INPUT : addr0_3 
* INPUT : addr0_4 
* INPUT : addr0_5 
* INPUT : addr0_6 
* INPUT : addr0_7 
* INPUT : s_en0 
* INPUT : p_en_bar0 
* INPUT : w_en0 
* INPUT : wl_en0 
* POWER : vdd 
* GROUND: gnd 
Xbitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 rbl_wl0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18
+ wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26
+ wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 wl_0_32 wl_0_33 wl_0_34
+ wl_0_35 wl_0_36 wl_0_37 wl_0_38 wl_0_39 wl_0_40 wl_0_41 wl_0_42
+ wl_0_43 wl_0_44 wl_0_45 wl_0_46 wl_0_47 wl_0_48 wl_0_49 wl_0_50
+ wl_0_51 wl_0_52 wl_0_53 wl_0_54 wl_0_55 wl_0_56 wl_0_57 wl_0_58
+ wl_0_59 wl_0_60 wl_0_61 wl_0_62 wl_0_63 wl_0_64 wl_0_65 wl_0_66
+ wl_0_67 wl_0_68 wl_0_69 wl_0_70 wl_0_71 wl_0_72 wl_0_73 wl_0_74
+ wl_0_75 wl_0_76 wl_0_77 wl_0_78 wl_0_79 wl_0_80 wl_0_81 wl_0_82
+ wl_0_83 wl_0_84 wl_0_85 wl_0_86 wl_0_87 wl_0_88 wl_0_89 wl_0_90
+ wl_0_91 wl_0_92 wl_0_93 wl_0_94 wl_0_95 wl_0_96 wl_0_97 wl_0_98
+ wl_0_99 wl_0_100 wl_0_101 wl_0_102 wl_0_103 wl_0_104 wl_0_105 wl_0_106
+ wl_0_107 wl_0_108 wl_0_109 wl_0_110 wl_0_111 wl_0_112 wl_0_113
+ wl_0_114 wl_0_115 wl_0_116 wl_0_117 wl_0_118 wl_0_119 wl_0_120
+ wl_0_121 wl_0_122 wl_0_123 wl_0_124 wl_0_125 wl_0_126 wl_0_127
+ wl_0_128 wl_0_129 wl_0_130 wl_0_131 wl_0_132 wl_0_133 wl_0_134
+ wl_0_135 wl_0_136 wl_0_137 wl_0_138 wl_0_139 wl_0_140 wl_0_141
+ wl_0_142 wl_0_143 wl_0_144 wl_0_145 wl_0_146 wl_0_147 wl_0_148
+ wl_0_149 wl_0_150 wl_0_151 wl_0_152 wl_0_153 wl_0_154 wl_0_155
+ wl_0_156 wl_0_157 wl_0_158 wl_0_159 wl_0_160 wl_0_161 wl_0_162
+ wl_0_163 wl_0_164 wl_0_165 wl_0_166 wl_0_167 wl_0_168 wl_0_169
+ wl_0_170 wl_0_171 wl_0_172 wl_0_173 wl_0_174 wl_0_175 wl_0_176
+ wl_0_177 wl_0_178 wl_0_179 wl_0_180 wl_0_181 wl_0_182 wl_0_183
+ wl_0_184 wl_0_185 wl_0_186 wl_0_187 wl_0_188 wl_0_189 wl_0_190
+ wl_0_191 wl_0_192 wl_0_193 wl_0_194 wl_0_195 wl_0_196 wl_0_197
+ wl_0_198 wl_0_199 wl_0_200 wl_0_201 wl_0_202 wl_0_203 wl_0_204
+ wl_0_205 wl_0_206 wl_0_207 wl_0_208 wl_0_209 wl_0_210 wl_0_211
+ wl_0_212 wl_0_213 wl_0_214 wl_0_215 wl_0_216 wl_0_217 wl_0_218
+ wl_0_219 wl_0_220 wl_0_221 wl_0_222 wl_0_223 wl_0_224 wl_0_225
+ wl_0_226 wl_0_227 wl_0_228 wl_0_229 wl_0_230 wl_0_231 wl_0_232
+ wl_0_233 wl_0_234 wl_0_235 wl_0_236 wl_0_237 wl_0_238 wl_0_239
+ wl_0_240 wl_0_241 wl_0_242 wl_0_243 wl_0_244 wl_0_245 wl_0_246
+ wl_0_247 wl_0_248 wl_0_249 wl_0_250 wl_0_251 wl_0_252 wl_0_253
+ wl_0_254 wl_0_255 vdd gnd
+ sram_32b_256_1rw_freepdk45_capped_replica_bitcell_array
Xport_data0
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 dout0_0 dout0_1
+ dout0_2 dout0_3 dout0_4 dout0_5 dout0_6 dout0_7 dout0_8 dout0_9
+ dout0_10 dout0_11 dout0_12 dout0_13 dout0_14 dout0_15 dout0_16
+ dout0_17 dout0_18 dout0_19 dout0_20 dout0_21 dout0_22 dout0_23
+ dout0_24 dout0_25 dout0_26 dout0_27 dout0_28 dout0_29 dout0_30
+ dout0_31 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7
+ din0_8 din0_9 din0_10 din0_11 din0_12 din0_13 din0_14 din0_15 din0_16
+ din0_17 din0_18 din0_19 din0_20 din0_21 din0_22 din0_23 din0_24
+ din0_25 din0_26 din0_27 din0_28 din0_29 din0_30 din0_31 s_en0
+ p_en_bar0 w_en0 vdd gnd
+ sram_32b_256_1rw_freepdk45_port_data
Xport_address0
+ addr0_0 addr0_1 addr0_2 addr0_3 addr0_4 addr0_5 addr0_6 addr0_7 wl_en0
+ wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9
+ wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17
+ wl_0_18 wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25
+ wl_0_26 wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 wl_0_32 wl_0_33
+ wl_0_34 wl_0_35 wl_0_36 wl_0_37 wl_0_38 wl_0_39 wl_0_40 wl_0_41
+ wl_0_42 wl_0_43 wl_0_44 wl_0_45 wl_0_46 wl_0_47 wl_0_48 wl_0_49
+ wl_0_50 wl_0_51 wl_0_52 wl_0_53 wl_0_54 wl_0_55 wl_0_56 wl_0_57
+ wl_0_58 wl_0_59 wl_0_60 wl_0_61 wl_0_62 wl_0_63 wl_0_64 wl_0_65
+ wl_0_66 wl_0_67 wl_0_68 wl_0_69 wl_0_70 wl_0_71 wl_0_72 wl_0_73
+ wl_0_74 wl_0_75 wl_0_76 wl_0_77 wl_0_78 wl_0_79 wl_0_80 wl_0_81
+ wl_0_82 wl_0_83 wl_0_84 wl_0_85 wl_0_86 wl_0_87 wl_0_88 wl_0_89
+ wl_0_90 wl_0_91 wl_0_92 wl_0_93 wl_0_94 wl_0_95 wl_0_96 wl_0_97
+ wl_0_98 wl_0_99 wl_0_100 wl_0_101 wl_0_102 wl_0_103 wl_0_104 wl_0_105
+ wl_0_106 wl_0_107 wl_0_108 wl_0_109 wl_0_110 wl_0_111 wl_0_112
+ wl_0_113 wl_0_114 wl_0_115 wl_0_116 wl_0_117 wl_0_118 wl_0_119
+ wl_0_120 wl_0_121 wl_0_122 wl_0_123 wl_0_124 wl_0_125 wl_0_126
+ wl_0_127 wl_0_128 wl_0_129 wl_0_130 wl_0_131 wl_0_132 wl_0_133
+ wl_0_134 wl_0_135 wl_0_136 wl_0_137 wl_0_138 wl_0_139 wl_0_140
+ wl_0_141 wl_0_142 wl_0_143 wl_0_144 wl_0_145 wl_0_146 wl_0_147
+ wl_0_148 wl_0_149 wl_0_150 wl_0_151 wl_0_152 wl_0_153 wl_0_154
+ wl_0_155 wl_0_156 wl_0_157 wl_0_158 wl_0_159 wl_0_160 wl_0_161
+ wl_0_162 wl_0_163 wl_0_164 wl_0_165 wl_0_166 wl_0_167 wl_0_168
+ wl_0_169 wl_0_170 wl_0_171 wl_0_172 wl_0_173 wl_0_174 wl_0_175
+ wl_0_176 wl_0_177 wl_0_178 wl_0_179 wl_0_180 wl_0_181 wl_0_182
+ wl_0_183 wl_0_184 wl_0_185 wl_0_186 wl_0_187 wl_0_188 wl_0_189
+ wl_0_190 wl_0_191 wl_0_192 wl_0_193 wl_0_194 wl_0_195 wl_0_196
+ wl_0_197 wl_0_198 wl_0_199 wl_0_200 wl_0_201 wl_0_202 wl_0_203
+ wl_0_204 wl_0_205 wl_0_206 wl_0_207 wl_0_208 wl_0_209 wl_0_210
+ wl_0_211 wl_0_212 wl_0_213 wl_0_214 wl_0_215 wl_0_216 wl_0_217
+ wl_0_218 wl_0_219 wl_0_220 wl_0_221 wl_0_222 wl_0_223 wl_0_224
+ wl_0_225 wl_0_226 wl_0_227 wl_0_228 wl_0_229 wl_0_230 wl_0_231
+ wl_0_232 wl_0_233 wl_0_234 wl_0_235 wl_0_236 wl_0_237 wl_0_238
+ wl_0_239 wl_0_240 wl_0_241 wl_0_242 wl_0_243 wl_0_244 wl_0_245
+ wl_0_246 wl_0_247 wl_0_248 wl_0_249 wl_0_250 wl_0_251 wl_0_252
+ wl_0_253 wl_0_254 wl_0_255 rbl_wl0 vdd gnd
+ sram_32b_256_1rw_freepdk45_port_address
.ENDS sram_32b_256_1rw_freepdk45_bank
* File: DFFPOSX1.pex.netlist
* Created: Wed Jan  2 18:36:24 2008
* Program "Calibre xRC"
* Version "v2007.2_34.24"
*
.subckt dff D Q clk vdd gnd
*
MM21 Q a_66_6# gnd gnd NMOS_VTG L=5e-08 W=5e-07
MM19 a_76_6# a_2_6# a_66_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM20 gnd Q a_76_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM18 a_66_6# clk a_61_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM17 a_61_6# a_34_4# gnd gnd NMOS_VTG L=5e-08 W=2.5e-07
MM10 gnd clk a_2_6# gnd NMOS_VTG L=5e-08 W=5e-07
MM16 a_34_4# a_22_6# gnd gnd NMOS_VTG L=5e-08 W=2.5e-07
MM15 gnd a_34_4# a_31_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM14 a_31_6# clk a_22_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM13 a_22_6# a_2_6# a_17_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM12 a_17_6# D gnd gnd NMOS_VTG L=5e-08 W=2.5e-07
MM11 Q a_66_6# vdd vdd PMOS_VTG L=5e-08 W=1e-06
MM9 vdd Q a_76_84# vdd PMOS_VTG L=5e-08 W=2.5e-07
MM8 a_76_84# clk a_66_6# vdd PMOS_VTG L=5e-08 W=2.5e-07
MM7 a_66_6# a_2_6# a_61_74# vdd PMOS_VTG L=5e-08 W=5e-07
MM6 a_61_74# a_34_4# vdd vdd PMOS_VTG L=5e-08 W=5e-07
MM0 vdd clk a_2_6# vdd PMOS_VTG L=5e-08 W=1e-06
MM5 a_34_4# a_22_6# vdd vdd PMOS_VTG L=5e-08 W=5e-07
MM4 vdd a_34_4# a_31_74# vdd PMOS_VTG L=5e-08 W=5e-07
MM3 a_31_74# a_2_6# a_22_6# vdd PMOS_VTG L=5e-08 W=5e-07
MM2 a_22_6# clk a_17_74# vdd PMOS_VTG L=5e-08 W=5e-07
MM1 a_17_74# D vdd vdd PMOS_VTG L=5e-08 W=5e-07
* c_9 a_66_6# 0 0.271997f
* c_20 clk 0 0.350944f
* c_27 Q 0 0.202617f
* c_32 a_76_84# 0 0.0210573f
* c_38 a_76_6# 0 0.0204911f
* c_45 a_34_4# 0 0.172306f
* c_55 a_2_6# 0 0.283119f
* c_59 a_22_6# 0 0.157312f
* c_64 D 0 0.0816386f
* c_73 gnd 0 0.254131f
* c_81 vdd 0 0.23624f
*
*.include "dff.pex.netlist.dff.pxi"
*
.ends
*
*

.SUBCKT sram_32b_256_1rw_freepdk45_row_addr_dff
+ din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 dout_0 dout_1 dout_2
+ dout_3 dout_4 dout_5 dout_6 dout_7 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* INPUT : din_7 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* OUTPUT: dout_7 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 8 cols: 1
Xdff_r0_c0
+ din_0 dout_0 clk vdd gnd
+ dff
Xdff_r1_c0
+ din_1 dout_1 clk vdd gnd
+ dff
Xdff_r2_c0
+ din_2 dout_2 clk vdd gnd
+ dff
Xdff_r3_c0
+ din_3 dout_3 clk vdd gnd
+ dff
Xdff_r4_c0
+ din_4 dout_4 clk vdd gnd
+ dff
Xdff_r5_c0
+ din_5 dout_5 clk vdd gnd
+ dff
Xdff_r6_c0
+ din_6 dout_6 clk vdd gnd
+ dff
Xdff_r7_c0
+ din_7 dout_7 clk vdd gnd
+ dff
.ENDS sram_32b_256_1rw_freepdk45_row_addr_dff

.SUBCKT sram_32b_256_1rw_freepdk45_data_dff
+ din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10
+ din_11 din_12 din_13 din_14 din_15 din_16 din_17 din_18 din_19 din_20
+ din_21 din_22 din_23 din_24 din_25 din_26 din_27 din_28 din_29 din_30
+ din_31 dout_0 dout_1 dout_2 dout_3 dout_4 dout_5 dout_6 dout_7 dout_8
+ dout_9 dout_10 dout_11 dout_12 dout_13 dout_14 dout_15 dout_16 dout_17
+ dout_18 dout_19 dout_20 dout_21 dout_22 dout_23 dout_24 dout_25
+ dout_26 dout_27 dout_28 dout_29 dout_30 dout_31 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* INPUT : din_7 
* INPUT : din_8 
* INPUT : din_9 
* INPUT : din_10 
* INPUT : din_11 
* INPUT : din_12 
* INPUT : din_13 
* INPUT : din_14 
* INPUT : din_15 
* INPUT : din_16 
* INPUT : din_17 
* INPUT : din_18 
* INPUT : din_19 
* INPUT : din_20 
* INPUT : din_21 
* INPUT : din_22 
* INPUT : din_23 
* INPUT : din_24 
* INPUT : din_25 
* INPUT : din_26 
* INPUT : din_27 
* INPUT : din_28 
* INPUT : din_29 
* INPUT : din_30 
* INPUT : din_31 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* OUTPUT: dout_7 
* OUTPUT: dout_8 
* OUTPUT: dout_9 
* OUTPUT: dout_10 
* OUTPUT: dout_11 
* OUTPUT: dout_12 
* OUTPUT: dout_13 
* OUTPUT: dout_14 
* OUTPUT: dout_15 
* OUTPUT: dout_16 
* OUTPUT: dout_17 
* OUTPUT: dout_18 
* OUTPUT: dout_19 
* OUTPUT: dout_20 
* OUTPUT: dout_21 
* OUTPUT: dout_22 
* OUTPUT: dout_23 
* OUTPUT: dout_24 
* OUTPUT: dout_25 
* OUTPUT: dout_26 
* OUTPUT: dout_27 
* OUTPUT: dout_28 
* OUTPUT: dout_29 
* OUTPUT: dout_30 
* OUTPUT: dout_31 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 32
Xdff_r0_c0
+ din_0 dout_0 clk vdd gnd
+ dff
Xdff_r0_c1
+ din_1 dout_1 clk vdd gnd
+ dff
Xdff_r0_c2
+ din_2 dout_2 clk vdd gnd
+ dff
Xdff_r0_c3
+ din_3 dout_3 clk vdd gnd
+ dff
Xdff_r0_c4
+ din_4 dout_4 clk vdd gnd
+ dff
Xdff_r0_c5
+ din_5 dout_5 clk vdd gnd
+ dff
Xdff_r0_c6
+ din_6 dout_6 clk vdd gnd
+ dff
Xdff_r0_c7
+ din_7 dout_7 clk vdd gnd
+ dff
Xdff_r0_c8
+ din_8 dout_8 clk vdd gnd
+ dff
Xdff_r0_c9
+ din_9 dout_9 clk vdd gnd
+ dff
Xdff_r0_c10
+ din_10 dout_10 clk vdd gnd
+ dff
Xdff_r0_c11
+ din_11 dout_11 clk vdd gnd
+ dff
Xdff_r0_c12
+ din_12 dout_12 clk vdd gnd
+ dff
Xdff_r0_c13
+ din_13 dout_13 clk vdd gnd
+ dff
Xdff_r0_c14
+ din_14 dout_14 clk vdd gnd
+ dff
Xdff_r0_c15
+ din_15 dout_15 clk vdd gnd
+ dff
Xdff_r0_c16
+ din_16 dout_16 clk vdd gnd
+ dff
Xdff_r0_c17
+ din_17 dout_17 clk vdd gnd
+ dff
Xdff_r0_c18
+ din_18 dout_18 clk vdd gnd
+ dff
Xdff_r0_c19
+ din_19 dout_19 clk vdd gnd
+ dff
Xdff_r0_c20
+ din_20 dout_20 clk vdd gnd
+ dff
Xdff_r0_c21
+ din_21 dout_21 clk vdd gnd
+ dff
Xdff_r0_c22
+ din_22 dout_22 clk vdd gnd
+ dff
Xdff_r0_c23
+ din_23 dout_23 clk vdd gnd
+ dff
Xdff_r0_c24
+ din_24 dout_24 clk vdd gnd
+ dff
Xdff_r0_c25
+ din_25 dout_25 clk vdd gnd
+ dff
Xdff_r0_c26
+ din_26 dout_26 clk vdd gnd
+ dff
Xdff_r0_c27
+ din_27 dout_27 clk vdd gnd
+ dff
Xdff_r0_c28
+ din_28 dout_28 clk vdd gnd
+ dff
Xdff_r0_c29
+ din_29 dout_29 clk vdd gnd
+ dff
Xdff_r0_c30
+ din_30 dout_30 clk vdd gnd
+ dff
Xdff_r0_c31
+ din_31 dout_31 clk vdd gnd
+ dff
.ENDS sram_32b_256_1rw_freepdk45_data_dff

.SUBCKT sram_32b_256_1rw_freepdk45_pinv_6
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS sram_32b_256_1rw_freepdk45_pinv_6

* spice ptx M{0} {1} nmos_vtg m=2 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

* spice ptx M{0} {1} pmos_vtg m=2 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p

.SUBCKT sram_32b_256_1rw_freepdk45_pinv_16
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 4
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS sram_32b_256_1rw_freepdk45_pinv_16

* spice ptx M{0} {1} pmos_vtg m=4 w=0.7425u l=0.05u pd=1.59u ps=1.59u as=0.09p ad=0.09p

* spice ptx M{0} {1} nmos_vtg m=4 w=0.2475u l=0.05u pd=0.59u ps=0.59u as=0.03p ad=0.03p

.SUBCKT sram_32b_256_1rw_freepdk45_pinv_17
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 11
Mpinv_pmos Z A vdd vdd pmos_vtg m=4 w=0.7425u l=0.05u pd=1.59u ps=1.59u as=0.09p ad=0.09p
Mpinv_nmos Z A gnd gnd nmos_vtg m=4 w=0.2475u l=0.05u pd=0.59u ps=0.59u as=0.03p ad=0.03p
.ENDS sram_32b_256_1rw_freepdk45_pinv_17

.SUBCKT sram_32b_256_1rw_freepdk45_pdriver_4
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 4, 11]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_6
Xbuf_inv2
+ Zb1_int Zb2_int vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_6
Xbuf_inv3
+ Zb2_int Zb3_int vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_16
Xbuf_inv4
+ Zb3_int Z vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_17
.ENDS sram_32b_256_1rw_freepdk45_pdriver_4

.SUBCKT sram_32b_256_1rw_freepdk45_pinv_18
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS sram_32b_256_1rw_freepdk45_pinv_18

.SUBCKT sram_32b_256_1rw_freepdk45_delay_chain
+ in out vdd gnd
* INPUT : in 
* OUTPUT: out 
* POWER : vdd 
* GROUND: gnd 
* fanouts: [4, 4, 4, 4, 4, 4, 4, 4, 4]
Xdinv0
+ in dout_1 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_0_0
+ dout_1 n_0_0 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_0_1
+ dout_1 n_0_1 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_0_2
+ dout_1 n_0_2 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_0_3
+ dout_1 n_0_3 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdinv1
+ dout_1 dout_2 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_1_0
+ dout_2 n_1_0 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_1_1
+ dout_2 n_1_1 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_1_2
+ dout_2 n_1_2 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_1_3
+ dout_2 n_1_3 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdinv2
+ dout_2 dout_3 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_2_0
+ dout_3 n_2_0 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_2_1
+ dout_3 n_2_1 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_2_2
+ dout_3 n_2_2 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_2_3
+ dout_3 n_2_3 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdinv3
+ dout_3 dout_4 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_3_0
+ dout_4 n_3_0 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_3_1
+ dout_4 n_3_1 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_3_2
+ dout_4 n_3_2 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_3_3
+ dout_4 n_3_3 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdinv4
+ dout_4 dout_5 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_4_0
+ dout_5 n_4_0 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_4_1
+ dout_5 n_4_1 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_4_2
+ dout_5 n_4_2 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_4_3
+ dout_5 n_4_3 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdinv5
+ dout_5 dout_6 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_5_0
+ dout_6 n_5_0 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_5_1
+ dout_6 n_5_1 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_5_2
+ dout_6 n_5_2 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_5_3
+ dout_6 n_5_3 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdinv6
+ dout_6 dout_7 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_6_0
+ dout_7 n_6_0 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_6_1
+ dout_7 n_6_1 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_6_2
+ dout_7 n_6_2 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_6_3
+ dout_7 n_6_3 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdinv7
+ dout_7 dout_8 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_7_0
+ dout_8 n_7_0 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_7_1
+ dout_8 n_7_1 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_7_2
+ dout_8 n_7_2 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_7_3
+ dout_8 n_7_3 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdinv8
+ dout_8 out vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_8_0
+ out n_8_0 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_8_1
+ out n_8_1 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_8_2
+ out n_8_2 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
Xdload_8_3
+ out n_8_3 vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_18
.ENDS sram_32b_256_1rw_freepdk45_delay_chain

.SUBCKT sram_32b_256_1rw_freepdk45_pinv_15
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS sram_32b_256_1rw_freepdk45_pinv_15

* spice ptx M{0} {1} pmos_vtg m=3 w=0.72u l=0.05u pd=1.54u ps=1.54u as=0.09p ad=0.09p

* spice ptx M{0} {1} nmos_vtg m=3 w=0.24u l=0.05u pd=0.58u ps=0.58u as=0.03p ad=0.03p

.SUBCKT sram_32b_256_1rw_freepdk45_pinv_8
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 8
Mpinv_pmos Z A vdd vdd pmos_vtg m=3 w=0.72u l=0.05u pd=1.54u ps=1.54u as=0.09p ad=0.09p
Mpinv_nmos Z A gnd gnd nmos_vtg m=3 w=0.24u l=0.05u pd=0.58u ps=0.58u as=0.03p ad=0.03p
.ENDS sram_32b_256_1rw_freepdk45_pinv_8

* spice ptx M{0} {1} nmos_vtg m=22 w=0.295u l=0.05u pd=0.69u ps=0.69u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=22 w=0.8825000000000001u l=0.05u pd=1.87u ps=1.87u as=0.11p ad=0.11p

.SUBCKT sram_32b_256_1rw_freepdk45_pinv_10
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 72
Mpinv_pmos Z A vdd vdd pmos_vtg m=22 w=0.8825000000000001u l=0.05u pd=1.87u ps=1.87u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=22 w=0.295u l=0.05u pd=0.69u ps=0.69u as=0.04p ad=0.04p
.ENDS sram_32b_256_1rw_freepdk45_pinv_10

* spice ptx M{0} {1} nmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

* spice ptx M{0} {1} pmos_vtg m=1 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

.SUBCKT sram_32b_256_1rw_freepdk45_pinv_7
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 3
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS sram_32b_256_1rw_freepdk45_pinv_7

* spice ptx M{0} {1} nmos_vtg m=8 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

* spice ptx M{0} {1} pmos_vtg m=8 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

.SUBCKT sram_32b_256_1rw_freepdk45_pinv_9
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 24
Mpinv_pmos Z A vdd vdd pmos_vtg m=8 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=8 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS sram_32b_256_1rw_freepdk45_pinv_9

.SUBCKT sram_32b_256_1rw_freepdk45_pdriver_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 3, 8, 24, 72]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_6
Xbuf_inv2
+ Zb1_int Zb2_int vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_6
Xbuf_inv3
+ Zb2_int Zb3_int vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_7
Xbuf_inv4
+ Zb3_int Zb4_int vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_8
Xbuf_inv5
+ Zb4_int Zb5_int vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_9
Xbuf_inv6
+ Zb5_int Z vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_10
.ENDS sram_32b_256_1rw_freepdk45_pdriver_0

* spice ptx M{0} {1} pmos_vtg m=12 w=0.9u l=0.05u pd=1.90u ps=1.90u as=0.11p ad=0.11p

* spice ptx M{0} {1} nmos_vtg m=12 w=0.3u l=0.05u pd=0.70u ps=0.70u as=0.04p ad=0.04p

.SUBCKT sram_32b_256_1rw_freepdk45_pinv_13
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 40
Mpinv_pmos Z A vdd vdd pmos_vtg m=12 w=0.9u l=0.05u pd=1.90u ps=1.90u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=12 w=0.3u l=0.05u pd=0.70u ps=0.70u as=0.04p ad=0.04p
.ENDS sram_32b_256_1rw_freepdk45_pinv_13

.SUBCKT sram_32b_256_1rw_freepdk45_pdriver_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [40]
Xbuf_inv1
+ A Z vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_13
.ENDS sram_32b_256_1rw_freepdk45_pdriver_2

.SUBCKT sram_32b_256_1rw_freepdk45_pnand3_0
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpnand3_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand3_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand3_pmos3 Z C vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand3_nmos1 Z C net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand3_nmos2 net1 B net2 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand3_nmos3 net2 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS sram_32b_256_1rw_freepdk45_pnand3_0

.SUBCKT sram_32b_256_1rw_freepdk45_pand3
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 40
Xpand3_nand
+ A B C zb_int vdd gnd
+ sram_32b_256_1rw_freepdk45_pnand3_0
Xpand3_inv
+ zb_int Z vdd gnd
+ sram_32b_256_1rw_freepdk45_pdriver_2
.ENDS sram_32b_256_1rw_freepdk45_pand3

.SUBCKT sram_32b_256_1rw_freepdk45_pinv_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 4
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS sram_32b_256_1rw_freepdk45_pinv_2

* spice ptx M{0} {1} pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

.SUBCKT sram_32b_256_1rw_freepdk45_pinv_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS sram_32b_256_1rw_freepdk45_pinv_1

.SUBCKT sram_32b_256_1rw_freepdk45_dff_buf_0
+ D Q Qb clk vdd gnd
* INPUT : D 
* OUTPUT: Q 
* OUTPUT: Qb 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* inv1: 2 inv2: 4
Xdff_buf_dff
+ D qint clk vdd gnd
+ dff
Xdff_buf_inv1
+ qint Qb vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_1
Xdff_buf_inv2
+ Qb Q vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_2
.ENDS sram_32b_256_1rw_freepdk45_dff_buf_0

.SUBCKT sram_32b_256_1rw_freepdk45_dff_buf_array
+ din_0 din_1 dout_0 dout_bar_0 dout_1 dout_bar_1 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* OUTPUT: dout_0 
* OUTPUT: dout_bar_0 
* OUTPUT: dout_1 
* OUTPUT: dout_bar_1 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 2 cols: 1
* inv1: 2 inv2: 4
Xdff_r0_c0
+ din_0 dout_0 dout_bar_0 clk vdd gnd
+ sram_32b_256_1rw_freepdk45_dff_buf_0
Xdff_r1_c0
+ din_1 dout_1 dout_bar_1 clk vdd gnd
+ sram_32b_256_1rw_freepdk45_dff_buf_0
.ENDS sram_32b_256_1rw_freepdk45_dff_buf_array

* spice ptx M{0} {1} nmos_vtg m=25 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=25 w=0.9175u l=0.05u pd=1.94u ps=1.94u as=0.11p ad=0.11p

.SUBCKT sram_32b_256_1rw_freepdk45_pinv_12
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 85
Mpinv_pmos Z A vdd vdd pmos_vtg m=25 w=0.9175u l=0.05u pd=1.94u ps=1.94u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=25 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p
.ENDS sram_32b_256_1rw_freepdk45_pinv_12

* spice ptx M{0} {1} nmos_vtg m=9 w=0.28u l=0.05u pd=0.66u ps=0.66u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=9 w=0.84u l=0.05u pd=1.78u ps=1.78u as=0.10p ad=0.10p

.SUBCKT sram_32b_256_1rw_freepdk45_pinv_11
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 28
Mpinv_pmos Z A vdd vdd pmos_vtg m=9 w=0.84u l=0.05u pd=1.78u ps=1.78u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=9 w=0.28u l=0.05u pd=0.66u ps=0.66u as=0.04p ad=0.04p
.ENDS sram_32b_256_1rw_freepdk45_pinv_11

.SUBCKT sram_32b_256_1rw_freepdk45_pdriver_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [28, 85]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_11
Xbuf_inv2
+ Zb1_int Z vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_12
.ENDS sram_32b_256_1rw_freepdk45_pdriver_1

* spice ptx M{0} {1} pmos_vtg m=10 w=0.865u l=0.05u pd=1.83u ps=1.83u as=0.11p ad=0.11p

* spice ptx M{0} {1} nmos_vtg m=10 w=0.28750000000000003u l=0.05u pd=0.68u ps=0.68u as=0.04p ad=0.04p

.SUBCKT sram_32b_256_1rw_freepdk45_pinv_14
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 32
Mpinv_pmos Z A vdd vdd pmos_vtg m=10 w=0.865u l=0.05u pd=1.83u ps=1.83u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=10 w=0.28750000000000003u l=0.05u pd=0.68u ps=0.68u as=0.04p ad=0.04p
.ENDS sram_32b_256_1rw_freepdk45_pinv_14

.SUBCKT sram_32b_256_1rw_freepdk45_pdriver_3
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [32]
Xbuf_inv1
+ A Z vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_14
.ENDS sram_32b_256_1rw_freepdk45_pdriver_3

.SUBCKT sram_32b_256_1rw_freepdk45_pand3_0
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 32
Xpand3_nand
+ A B C zb_int vdd gnd
+ sram_32b_256_1rw_freepdk45_pnand3_0
Xpand3_inv
+ zb_int Z vdd gnd
+ sram_32b_256_1rw_freepdk45_pdriver_3
.ENDS sram_32b_256_1rw_freepdk45_pand3_0

.SUBCKT sram_32b_256_1rw_freepdk45_pnand2_1
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpnand2_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_nmos1 Z B net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand2_nmos2 net1 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS sram_32b_256_1rw_freepdk45_pnand2_1

.SUBCKT sram_32b_256_1rw_freepdk45_pnand2_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpnand2_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_nmos1 Z B net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand2_nmos2 net1 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS sram_32b_256_1rw_freepdk45_pnand2_0

* spice ptx M{0} {1} pmos_vtg m=4 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

* spice ptx M{0} {1} nmos_vtg m=4 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

.SUBCKT sram_32b_256_1rw_freepdk45_pinv_3
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 12
Mpinv_pmos Z A vdd vdd pmos_vtg m=4 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=4 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS sram_32b_256_1rw_freepdk45_pinv_3

.SUBCKT sram_32b_256_1rw_freepdk45_pdriver
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [12]
Xbuf_inv1
+ A Z vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_3
.ENDS sram_32b_256_1rw_freepdk45_pdriver

.SUBCKT sram_32b_256_1rw_freepdk45_pand2
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 12
Xpand2_nand
+ A B zb_int vdd gnd
+ sram_32b_256_1rw_freepdk45_pnand2_0
Xpand2_inv
+ zb_int Z vdd gnd
+ sram_32b_256_1rw_freepdk45_pdriver
.ENDS sram_32b_256_1rw_freepdk45_pand2

.SUBCKT sram_32b_256_1rw_freepdk45_control_logic_rw
+ csb web clk rbl_bl s_en w_en p_en_bar wl_en clk_buf vdd gnd
* INPUT : csb 
* INPUT : web 
* INPUT : clk 
* INPUT : rbl_bl 
* OUTPUT: s_en 
* OUTPUT: w_en 
* OUTPUT: p_en_bar 
* OUTPUT: wl_en 
* OUTPUT: clk_buf 
* POWER : vdd 
* GROUND: gnd 
* num_rows: 256
* words_per_row: 1
* word_size 32
Xctrl_dffs
+ csb web cs_bar cs we_bar we clk_buf vdd gnd
+ sram_32b_256_1rw_freepdk45_dff_buf_array
Xclkbuf
+ clk clk_buf vdd gnd
+ sram_32b_256_1rw_freepdk45_pdriver_0
Xinv_clk_bar
+ clk_buf clk_bar vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_15
Xand2_gated_clk_bar
+ clk_bar cs gated_clk_bar vdd gnd
+ sram_32b_256_1rw_freepdk45_pand2
Xand2_gated_clk_buf
+ clk_buf cs gated_clk_buf vdd gnd
+ sram_32b_256_1rw_freepdk45_pand2
Xbuf_wl_en
+ gated_clk_bar wl_en vdd gnd
+ sram_32b_256_1rw_freepdk45_pdriver_1
Xrbl_bl_delay_inv
+ rbl_bl_delay rbl_bl_delay_bar vdd gnd
+ sram_32b_256_1rw_freepdk45_pinv_15
Xw_en_and
+ we rbl_bl_delay_bar gated_clk_bar w_en vdd gnd
+ sram_32b_256_1rw_freepdk45_pand3
Xbuf_s_en_and
+ rbl_bl_delay gated_clk_bar we_bar s_en vdd gnd
+ sram_32b_256_1rw_freepdk45_pand3_0
Xdelay_chain
+ rbl_bl rbl_bl_delay vdd gnd
+ sram_32b_256_1rw_freepdk45_delay_chain
Xnand_p_en_bar
+ gated_clk_buf rbl_bl_delay p_en_bar_unbuf vdd gnd
+ sram_32b_256_1rw_freepdk45_pnand2_1
Xbuf_p_en_bar
+ p_en_bar_unbuf p_en_bar vdd gnd
+ sram_32b_256_1rw_freepdk45_pdriver_4
.ENDS sram_32b_256_1rw_freepdk45_control_logic_rw

.SUBCKT sram_32b_256_1rw_freepdk45
+ din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7]
+ din0[8] din0[9] din0[10] din0[11] din0[12] din0[13] din0[14] din0[15]
+ din0[16] din0[17] din0[18] din0[19] din0[20] din0[21] din0[22]
+ din0[23] din0[24] din0[25] din0[26] din0[27] din0[28] din0[29]
+ din0[30] din0[31] addr0[0] addr0[1] addr0[2] addr0[3] addr0[4]
+ addr0[5] addr0[6] addr0[7] csb0 web0 clk0 dout0[0] dout0[1] dout0[2]
+ dout0[3] dout0[4] dout0[5] dout0[6] dout0[7] dout0[8] dout0[9]
+ dout0[10] dout0[11] dout0[12] dout0[13] dout0[14] dout0[15] dout0[16]
+ dout0[17] dout0[18] dout0[19] dout0[20] dout0[21] dout0[22] dout0[23]
+ dout0[24] dout0[25] dout0[26] dout0[27] dout0[28] dout0[29] dout0[30]
+ dout0[31] vdd gnd
* INPUT : din0[0] 
* INPUT : din0[1] 
* INPUT : din0[2] 
* INPUT : din0[3] 
* INPUT : din0[4] 
* INPUT : din0[5] 
* INPUT : din0[6] 
* INPUT : din0[7] 
* INPUT : din0[8] 
* INPUT : din0[9] 
* INPUT : din0[10] 
* INPUT : din0[11] 
* INPUT : din0[12] 
* INPUT : din0[13] 
* INPUT : din0[14] 
* INPUT : din0[15] 
* INPUT : din0[16] 
* INPUT : din0[17] 
* INPUT : din0[18] 
* INPUT : din0[19] 
* INPUT : din0[20] 
* INPUT : din0[21] 
* INPUT : din0[22] 
* INPUT : din0[23] 
* INPUT : din0[24] 
* INPUT : din0[25] 
* INPUT : din0[26] 
* INPUT : din0[27] 
* INPUT : din0[28] 
* INPUT : din0[29] 
* INPUT : din0[30] 
* INPUT : din0[31] 
* INPUT : addr0[0] 
* INPUT : addr0[1] 
* INPUT : addr0[2] 
* INPUT : addr0[3] 
* INPUT : addr0[4] 
* INPUT : addr0[5] 
* INPUT : addr0[6] 
* INPUT : addr0[7] 
* INPUT : csb0 
* INPUT : web0 
* INPUT : clk0 
* OUTPUT: dout0[0] 
* OUTPUT: dout0[1] 
* OUTPUT: dout0[2] 
* OUTPUT: dout0[3] 
* OUTPUT: dout0[4] 
* OUTPUT: dout0[5] 
* OUTPUT: dout0[6] 
* OUTPUT: dout0[7] 
* OUTPUT: dout0[8] 
* OUTPUT: dout0[9] 
* OUTPUT: dout0[10] 
* OUTPUT: dout0[11] 
* OUTPUT: dout0[12] 
* OUTPUT: dout0[13] 
* OUTPUT: dout0[14] 
* OUTPUT: dout0[15] 
* OUTPUT: dout0[16] 
* OUTPUT: dout0[17] 
* OUTPUT: dout0[18] 
* OUTPUT: dout0[19] 
* OUTPUT: dout0[20] 
* OUTPUT: dout0[21] 
* OUTPUT: dout0[22] 
* OUTPUT: dout0[23] 
* OUTPUT: dout0[24] 
* OUTPUT: dout0[25] 
* OUTPUT: dout0[26] 
* OUTPUT: dout0[27] 
* OUTPUT: dout0[28] 
* OUTPUT: dout0[29] 
* OUTPUT: dout0[30] 
* OUTPUT: dout0[31] 
* POWER : vdd 
* GROUND: gnd 
Xbank0
+ dout0[0] dout0[1] dout0[2] dout0[3] dout0[4] dout0[5] dout0[6]
+ dout0[7] dout0[8] dout0[9] dout0[10] dout0[11] dout0[12] dout0[13]
+ dout0[14] dout0[15] dout0[16] dout0[17] dout0[18] dout0[19] dout0[20]
+ dout0[21] dout0[22] dout0[23] dout0[24] dout0[25] dout0[26] dout0[27]
+ dout0[28] dout0[29] dout0[30] dout0[31] rbl_bl0 bank_din0_0
+ bank_din0_1 bank_din0_2 bank_din0_3 bank_din0_4 bank_din0_5
+ bank_din0_6 bank_din0_7 bank_din0_8 bank_din0_9 bank_din0_10
+ bank_din0_11 bank_din0_12 bank_din0_13 bank_din0_14 bank_din0_15
+ bank_din0_16 bank_din0_17 bank_din0_18 bank_din0_19 bank_din0_20
+ bank_din0_21 bank_din0_22 bank_din0_23 bank_din0_24 bank_din0_25
+ bank_din0_26 bank_din0_27 bank_din0_28 bank_din0_29 bank_din0_30
+ bank_din0_31 a0_0 a0_1 a0_2 a0_3 a0_4 a0_5 a0_6 a0_7 s_en0 p_en_bar0
+ w_en0 wl_en0 vdd gnd
+ sram_32b_256_1rw_freepdk45_bank
Xcontrol0
+ csb0 web0 clk0 rbl_bl0 s_en0 w_en0 p_en_bar0 wl_en0 clk_buf0 vdd gnd
+ sram_32b_256_1rw_freepdk45_control_logic_rw
Xrow_address0
+ addr0[0] addr0[1] addr0[2] addr0[3] addr0[4] addr0[5] addr0[6]
+ addr0[7] a0_0 a0_1 a0_2 a0_3 a0_4 a0_5 a0_6 a0_7 clk_buf0 vdd gnd
+ sram_32b_256_1rw_freepdk45_row_addr_dff
Xdata_dff0
+ din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7]
+ din0[8] din0[9] din0[10] din0[11] din0[12] din0[13] din0[14] din0[15]
+ din0[16] din0[17] din0[18] din0[19] din0[20] din0[21] din0[22]
+ din0[23] din0[24] din0[25] din0[26] din0[27] din0[28] din0[29]
+ din0[30] din0[31] bank_din0_0 bank_din0_1 bank_din0_2 bank_din0_3
+ bank_din0_4 bank_din0_5 bank_din0_6 bank_din0_7 bank_din0_8
+ bank_din0_9 bank_din0_10 bank_din0_11 bank_din0_12 bank_din0_13
+ bank_din0_14 bank_din0_15 bank_din0_16 bank_din0_17 bank_din0_18
+ bank_din0_19 bank_din0_20 bank_din0_21 bank_din0_22 bank_din0_23
+ bank_din0_24 bank_din0_25 bank_din0_26 bank_din0_27 bank_din0_28
+ bank_din0_29 bank_din0_30 bank_din0_31 clk_buf0 vdd gnd
+ sram_32b_256_1rw_freepdk45_data_dff
.ENDS sram_32b_256_1rw_freepdk45

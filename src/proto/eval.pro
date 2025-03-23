/* eval.c */
varnumber_T num_divide(varnumber_T n1, varnumber_T n2, int *failed);
varnumber_T num_modulus(varnumber_T n1, varnumber_T n2, int *failed);
void eval_init(void);
void eval_clear(void);
void fill_evalarg_from_eap(evalarg_T *evalarg, exarg_T *eap, int skip);
int eval_to_bool(char_u *arg, int *error, exarg_T *eap, int skip, int use_simple_function);
int eval_expr_valid_arg(typval_T *tv);
funccall_T *eval_expr_get_funccal(typval_T *expr, typval_T *rettv);
int eval_expr_typval(typval_T *expr, int want_func, typval_T *argv, int argc, funccall_T *fc_arg, typval_T *rettv);
int eval_expr_to_bool(typval_T *expr, int *error);
char_u *eval_to_string_skip(char_u *arg, exarg_T *eap, int skip);
void init_evalarg(evalarg_T *evalarg);
void clear_evalarg(evalarg_T *evalarg, exarg_T *eap);
int skip_expr(char_u **pp, evalarg_T *evalarg);
int skip_expr_concatenate(char_u **arg, char_u **start, char_u **end, evalarg_T *evalarg);
char_u *typval2string(typval_T *tv, int join_list);
char_u *eval_to_string_eap(char_u *arg, int join_list, exarg_T *eap, int use_simple_function);
char_u *eval_to_string(char_u *arg, int join_list, int use_simple_function);
char_u *eval_to_string_safe(char_u *arg, int use_sandbox, int keep_script_version, int use_simple_function);
varnumber_T eval_to_number(char_u *expr, int use_simple_function);
typval_T *eval_expr(char_u *arg, exarg_T *eap);
typval_T *eval_expr_ext(char_u *arg, exarg_T *eap, int use_simple_function);
int call_vim_function(char_u *func, int argc, typval_T *argv, typval_T *rettv);
void *call_func_retstr(char_u *func, int argc, typval_T *argv);
void *call_func_retlist(char_u *func, int argc, typval_T *argv);
int eval_foldexpr(win_T *wp, int *cp);
char_u *get_lval(char_u *name, typval_T *rettv, lval_T *lp, int unlet, int skip, int flags, int fne_flags);
void clear_lval(lval_T *lp);
void set_var_lval(lval_T *lp, char_u *endp, typval_T *rettv, int copy, int flags, char_u *op, int var_idx);
int tv_op(typval_T *tv1, typval_T *tv2, char_u *op);
void *eval_for_line(char_u *arg, int *errp, exarg_T *eap, evalarg_T *evalarg);
void skip_for_lines(void *fi_void, evalarg_T *evalarg);
int next_for_item(void *fi_void, char_u *arg);
void free_for_info(void *fi_void);
void set_context_for_expression(expand_T *xp, char_u *arg, cmdidx_T cmdidx);
int pattern_match(char_u *pat, char_u *text, int ic);
char_u *eval_next_non_blank(char_u *arg, evalarg_T *evalarg, int *getnext);
char_u *eval_next_line(char_u *arg, evalarg_T *evalarg);
char_u *skipwhite_and_linebreak(char_u *arg, evalarg_T *evalarg);
int eval0(char_u *arg, typval_T *rettv, exarg_T *eap, evalarg_T *evalarg);
int may_call_simple_func(char_u *arg, typval_T *rettv);
int eval0_simple_funccal(char_u *arg, typval_T *rettv, exarg_T *eap, evalarg_T *evalarg);
int eval0_retarg(char_u *arg, typval_T *rettv, exarg_T *eap, evalarg_T *evalarg, char_u **retarg);
int eval1(char_u **arg, typval_T *rettv, evalarg_T *evalarg);
void eval_addblob(typval_T *tv1, typval_T *tv2);
int eval_addlist(typval_T *tv1, typval_T *tv2);
int eval_addtuple(typval_T *tv1, typval_T *tv2);
int eval_leader(char_u **arg, int vim9);
int handle_predefined(char_u *s, int len, typval_T *rettv);
int check_can_index(typval_T *rettv, int evaluate, int verbose);
int eval_index_inner(typval_T *rettv, int is_range, typval_T *var1, typval_T *var2, int exclusive, char_u *key, int keylen, int verbose);
char_u *partial_name(partial_T *pt);
void partial_unref(partial_T *pt);
char_u *echo_string_core(typval_T *tv, char_u **tofree, char_u *numbuf, int copyID, int echo_style, int restore_copyID, int composite_val);
char_u *echo_string(typval_T *tv, char_u **tofree, char_u *numbuf, int copyID);
int buf_byteidx_to_charidx(buf_T *buf, int lnum, int byteidx);
int buf_charidx_to_byteidx(buf_T *buf, int lnum, int charidx);
pos_T *var2fpos(typval_T *varp, int dollar_lnum, int *fnum, int charcol);
int list2fpos(typval_T *arg, pos_T *posp, int *fnump, colnr_T *curswantp, int charcol);
int get_env_len(char_u **arg);
int get_id_len(char_u **arg);
int get_name_len(char_u **arg, char_u **alias, int evaluate, int verbose);
char_u *find_name_end(char_u *arg, char_u **expr_start, char_u **expr_end, int flags);
int eval_isnamec(int c);
int eval_isnamec1(int c);
int eval_isdictc(int c);
int handle_subscript(char_u **arg, char_u *name_start, typval_T *rettv, evalarg_T *evalarg, int verbose);
int item_copy(typval_T *from, typval_T *to, int deep, int top, int copyID);
void echo_one(typval_T *rettv, int with_space, int *atstart, int *needclr);
void ex_echo(exarg_T *eap);
void ex_echohl(exarg_T *eap);
int get_echo_attr(void);
void ex_execute(exarg_T *eap);
char_u *find_option_end(char_u **arg, int *scope);
void last_set_msg(sctx_T script_ctx);
char_u *do_string_sub(char_u *str, size_t str_len, char_u *pat, char_u *sub, typval_T *expr, char_u *flags, size_t *ret_len);
/* vim: set ft=c : */

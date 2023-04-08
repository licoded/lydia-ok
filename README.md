## NEED install graphviz manually

### Reason

Because in the code of lydia, it use `system("dot XXX")`, and dot is a command of graphviz.

- `lib/src/utils/dfa_transform.cpp` -- at 120 line
- `lib/src/mona_ext/mona_ext_base.cpp` -- at 310 line

### How to install

**Ubuntu:**

```bash
sudo apt install libgraphviz-dev graphviz
```

**Centos:**

```bash
yum install graphviz
```

## Usage

For example, this command translates the LDLf formula in the file `examples/liveness.ldlf` to a DFA:
```
lydia -l ldlf -f examples/liveness.ldlf -g liveness
```

The output is in `liveness.svg`.

To do synthesis of an LTLf formula, you have to provide both the path to the formula
e.g. `examples/counter_1.ltlf` and a file to the partition file, e.g. `examples/counter_1.part`:
```
lydia -l ltlf -f examples/counter_1.ltlf --part examples/counter_1.part
```

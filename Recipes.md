# Table of Contents

- [Custom vimrc file](#custom-vimrc-file)
- [Install requirements.txt](#install-requirementstxt)
- [wget github file](#wget-github-file)
- [matplotlib pyplot show matrix with data inside cells](#matplotlib-pyplot-show-matrix-with-data-inside-cells)
- [Git](#git)
  - [push existing repo from commandline](#push-existing-repo-from-commandline)
- [Mac Emojis](#mac-emojis)


# Custom vimrc file

```shell
vim -u /Users/afroz/Code/rc-files/vim
```

Or in .bashrc
```shell
alias testvim='vim -u /Users/afroz/Code/rc-files/vim'
```

# Install requirements.txt

```shell
pip install -r requirements.txt
```

# wget github file

```shell
wget https://raw.githubusercontent.com/karpathy/char-rnn/master/data/tinyshakespeare/input.txt
```

# matplotlib pyplot show matrix with data inside cells

```python
fsz = 16
plt.figure(figsize=(fsz, fsz))
plt.imshow(lm, cmap='Blues')

for i in range(len(itos)):
    for j in range(len(itos)):
        chstr = itos[i] + itos[j]
        probab = round(lm[i, j].item(), 2)
        plt.text(j, i, chstr,  ha='center', va='bottom', color='gray')
        plt.text(j, i, probab, ha='center', va='top',    color='gray')
plt.axis('off')
```

# Git

## push existing repo from commandline

```shell
git remote add origin git@github.com:afrozenator/makemore.git
git branch -M main
git push -u origin main
```

# Mac Emojis

 Cmd + Ctrl + Space

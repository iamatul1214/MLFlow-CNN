echo [$(date)]: "START"
echo [$(date)]: "creating environment"
conda create --prefix ./env python=3.7 -y   #creating the enviornment in the same project directory
echo [$(date)]: "activate environment"
source activate ./env
echo [$(date)]: "install requirements"
pip install -r requirements.txt
echo [$(date)]: "export conda environment"
conda env export > conda.yaml               #exporting the enviorment into conda.yaml file so that in future anyone can install the same environment
<<Basic_git_work
echo [$(date)]: "initialize git repository"
git init
echo [$(date)]: "add env to gitignore"
echo "env/" > .gitignore
# echo "# ${PWD}" > README.md
echo [$(date)]: "first commit"
git add .
git commit -m "first commit"
echo [$(date)]: "END"
Basic_git_work


# to remove everything -
# rm -rf env/ .gitignore conda.yaml README.md .git/
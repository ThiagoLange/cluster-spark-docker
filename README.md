
# Cluster Spark com Docker

Dockerfile e docker-compose.yaml para criar um cluster spark com um manager e 2 workers para estudos com o docker.

## Passo a Passo

[Repositório](https://github.com/ThiagoLange/cluster-spark-docker.git)

### 1. Instale o Docker - <https://www.docker.com/> disponível para MacOs, Windows e Linux

### 2. Instale o Docker Compose - <https://docs.docker.com/compose/install/> disponível para MacOs, Windows e Linux.

### 3. Faça o clone do repositório ou o download dos arquivos.

### 4. Salve ele em um diretório de sua preferência.

### 5. Acesse esse diretório pelo terminal.

### 6. Para iniciar o cluster digite ```docker-compose up -d```

### 7. Espere finalizar a criação do cluster.

### 8. Acessando a interfáce gráfica com as informações do cluster, digite no seu navegador ```localhost:8080```

### 9. Acessar cluster pelo terminal, acesse o manager
```docker exec -it spark-master /bin/bash```

### 10. Após acessar o manager digite
```pyspark --master spark://spark-master:7077```

### Após uso, se quiser parar o cluster digite ```docker-compose stop```

### Caso queira destruir o cluster ```docker-compose down```


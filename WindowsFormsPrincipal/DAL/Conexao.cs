﻿using System;
using System.IO;

namespace DAL
{
    public static class Conexao
    {
        private static string stringDeConexao;
        public static string StringDeConexao
        {
            get
            {
                if (string.IsNullOrEmpty(stringDeConexao))
                    if (File.Exists("C:\\ConfiguracaoBanco\\Conexao.config"))
                        stringDeConexao = File.ReadAllText("C:\\ConfiguracaoBanco\\Conexao.config");
                    else throw new Exception("Você precisa criar a conexão com o Banco de Dados");

                return stringDeConexao;
            }
        }   
    }
}

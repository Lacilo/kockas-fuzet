using System;
using ConsoleApp1.Models;

public class SzolgaltatoView
{
	public SzolgaltatoView()
	{

	}

	public void ShowSzolgaltatas(Szolgaltato szolgaltato)
	{
		Console.WriteLine($"Rövid név:{szolgaltato.RovidNev}");
		Console.WriteLine($"Név: {szolgaltato.Nev}");
		Console.WriteLine($"Ügyfélszolgálat: {szolgaltato}");
		Console.WriteLine($"Cím: {szolgaltato.Cim}");
	}

	public void ShowSzolgaltatoList(List<Szolgaltato> szolgaltatok)
	{

	}
}

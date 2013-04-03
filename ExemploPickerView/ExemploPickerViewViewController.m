//
//  ExemploPickerViewViewController.m
//  ExemploPickerView
//
//  Created by Igor Gonçalves Caballero Melao on 05/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ExemploPickerViewViewController.h"

@implementation ExemploPickerViewViewController

//metodo acionado quando o picker view for criado ou ATUALIZADO com a intencao do picker perguntar para nós ( o datasource) quantas colunas ele terá
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

//metodo acionado quando o picker view for criado ou ATUALIZADO com a intencao do picker perguntar para nós ( o datasource) quantas linhas terá em cada coluna dele
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    //vamos retornar a quantidade de selecoes adicionados no arrya
    return [arraySelecoes count];
}

//metodo acionado quando o picker view for criado ou ATUALIZADO com a intencao do picker perguntar para nós ( o datasource) o que vai ser escreito em cada linha de cada coluna dele
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    //vou buscar por um dicionario de uma determinada posicao, que esta relacionado com o numero da linha do picker view
    NSMutableDictionary *selecao = [arraySelecoes objectAtIndex:row];
    
    return [selecao objectForKey:@"nome"];
}

//metodo acionado quando o usuario clica em uma linha do picker view
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    NSMutableDictionary *time = [arraySelecoes objectAtIndex:row];
    
    imgEscudo.image = [UIImage imageNamed:[time objectForKey:@"imagem"]];
    
    lblNome.text = [time objectForKey:@"nome"];
    
    lblPais.text = [NSString stringWithFormat:@"%@ -", [time objectForKey:@"pais"]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    //alocar a inicializar o arrayTimes
    arraySelecoes = [[NSMutableArray alloc]init];
    
    //criando um dicionario para guardar dados de um time
    NSMutableDictionary *time = [[NSMutableDictionary alloc] init];
    
    //adicionando dados de uma seleção no dicionario
    [time setObject:@"Argentina" forKey:@"nome"];
    [time setObject:@"AG" forKey:@"pais"];
    [time setObject:@"Argentina.gif" forKey:@"imagem"];
    
    //com o dicionario do time preenchido, vamos adiciona-lo no array que vai guardar os times
    [arraySelecoes addObject:time];
    
    //criando uma nova referencia para o objeto time.
    time = [[NSMutableDictionary alloc]init];
    
    //adicionando dados de uma seleção no dicionario
    [time setObject:@"Brasil" forKey:@"nome"];
    [time setObject:@"BR" forKey:@"pais"];
    [time setObject:@"Brazil.gif" forKey:@"imagem"];
    
    //com o dicionario do time preenchido, vamos adiciona-lo no array que vai guardar os times
    [arraySelecoes addObject:time];
    
    //criando uma nova referencia para o objeto time.
    time = [[NSMutableDictionary alloc]init];
    
    //adicionando dados de uma seleção no dicionario
    [time setObject:@"Uruguai" forKey:@"nome"];
    [time setObject:@"UG" forKey:@"pais"];
    [time setObject:@"Uruguay.gif" forKey:@"imagem"];
    
    //com o dicionario do time preenchido, vamos adiciona-lo no array que vai guardar os times
    [arraySelecoes addObject:time];
    
    //criando uma nova referencia para o objeto time.
    time = [[NSMutableDictionary alloc]init];
    
    //adicionando dados de uma seleção no dicionario
    [time setObject:@"Portugal" forKey:@"nome"];
    [time setObject:@"PT" forKey:@"pais"];
    [time setObject:@"Portugal.gif" forKey:@"imagem"];
    
    //com o dicionario do time preenchido, vamos adiciona-lo no array que vai guardar os times
    [arraySelecoes addObject:time];
    
    
    // usamos esse Log para ver oque tem dentro de um array,
    NSLog(@"%@", [arraySelecoes description]);
    
    //estou selecionando a linha apenas no visual.Nao chama o metodo didSelectRow
    //[meuPicker selectRow:2 inComponent:0 animated:YES];
    
    //esse metodo abaixo foi implementado na nossa classe com a intencao do picker view chama-lo quando o usuario selecionar uma linha, mas nada impede de nos, de dentro da nossa classe, chamar esse metodo tbm, com a intencao de simular um toque numa linha
    [self pickerView:meuPicker didSelectRow:0 inComponent:0];
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

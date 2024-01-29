import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Dessert.name,
                                           ascending: true)],
        animation: .default)
    private var desserts: FetchedResults<Dessert>

    var body: some View {
        NavigationView{
            VStack{
                Text("DESSERTS")
                    .font(.title)
                List {
                    ForEach(desserts) { dessert in
                        VStack(alignment:.leading){
                            Text (dessert.name!)
                                .font(.system(size: 16, weight: .bold))

                            HStack{
                                Text (dessert.size!)
                                Spacer()
                                Text("$\(dessert.price, specifier: "%.2f")")
                                    .foregroundColor(.gray)
                                    .font(.callout)
                            }
                        }
                    }
                }
            }
           .onAppear{createDesserts()}
        }
    }
    
    
    
    func createDesserts() { 
        let profiterole = Dessert(context: viewContext)
        profiterole.name = "Profiterole"
        profiterole.size = "Large"
        profiterole.price = 2.99

        let cremeBrulee = Dessert(context: viewContext)
        cremeBrulee.name = "Crème Brûlée"
        cremeBrulee.size = "Medium"
        cremeBrulee.price = 3.99

        let iceCream = Dessert(context: viewContext)
        iceCream.name = "Ice Cream"
        iceCream.size = "Extra Large"
        iceCream.price = 5.99

        let applePie = Dessert(context: viewContext)
        applePie.name = "Apple Pie"
        applePie.size = "Small"
        applePie.price = 2.99

        let rizALImperatrice = Dessert(context: viewContext)
        rizALImperatrice.name = "Riz à l'Impératrice"
        rizALImperatrice.size = "Small"
        rizALImperatrice.price = 2.99

        let cheeseCake = Dessert(context: viewContext)
        cheeseCake.name = "Cheese Cake"
        cheeseCake.size = "Extra Small"
        cheeseCake.price = 4.99

        let carrotCake = Dessert(context: viewContext)
        carrotCake.name = "Carrot Cake"
        carrotCake.size = "Standard"
        carrotCake.price = 3.99

        let pieceMontee = Dessert(context: viewContext)
        pieceMontee.name = "Pièce Montée"
        pieceMontee.size = "Medium"
        pieceMontee.price = 5.99

        let eclair = Dessert(context: viewContext)
        eclair.name = "Éclair"
        eclair.size = "Large"
        eclair.price = 3.99

        let crepeSuzette = Dessert(context: viewContext)
        crepeSuzette.name = "Crêpe Suzette"
        crepeSuzette.size = "Extra Large"
        crepeSuzette.price = 3.99

        do {
           try viewContext.save()
        } catch (let error) {
           print(error.localizedDescription)
        }

    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




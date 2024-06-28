//
//  SettingsView.swift
//  Alias
//
//  Created by Artem Golubinskiy on 28.06.2024.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var viewModel = SettingsViewModel()
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .blue
        UISegmentedControl.appearance().backgroundColor = .black.withAlphaComponent(0.3)
        UISegmentedControl.appearance()
            .setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
               UISegmentedControl.appearance()
                   .setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }
    
    var body: some View {
        VStack(spacing: 15) {
            PlainLabel(text: "Настройки")
                    
            roundTimeBlock
            
            winPointsBlock
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        .background(.black)
    }
    
    private var roundTimeBlock: some View {
        VStack(spacing: 15) {
            getLabel(text: "Длительность раунда")
                        
            getSegmentedControl(key: "RoundTime", tags: [30,60,90], selection: $viewModel.roundTime)
        }
    }
    
    private var winPointsBlock: some View {
        VStack(spacing: 15) {
            getLabel(text: "Очков для победы")

            getSegmentedControl(key: "WinPoints", tags: [25,50,75,100], selection: $viewModel.winPoints)
        }
    }
    
    @ViewBuilder
    private func getLabel(text: String) -> some View {
        HStack {
            Text(text)
                .font(.system(size: 15))
                .foregroundStyle(.white)
                .bold()
            
            Spacer()
        }
        .padding(.horizontal, 15)
    }
    
    @ViewBuilder
    private func getSegmentedControl(
        key: String,
        tags: [Int],
        selection: Binding<Int>
    ) -> some View {
        Picker(key, selection: selection) {
            
            ForEach(tags, id: \.self) {
                Text("\($0)").tag($0)
                    .foregroundStyle(.white)
                
            }
        }
        .pickerStyle(.segmented)
        .padding(.horizontal, 15)
    }
    
}

#Preview {
    SettingsView()
}

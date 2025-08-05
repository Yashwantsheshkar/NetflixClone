//
//  CollectionTableViewCell.swift
//  NetflixClone
//
//  Created by Yashwant Sheshkar on 04/08/25.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {
 
    static let identifier = "CollectionViewTableViewCell"
    
    private let collectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 140, height: 200)
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return collectionView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemBackground
        contentView.addSubview(collectionView)
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = contentView.bounds
    }

}


extension CollectionViewTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .systemGray6
        return cell
    }
    
    
    
}

//
//#if canImport(SwiftUI) && DEBUG
//import SwiftUI
//
//struct CollectionViewTableViewCell_Preview: UIViewRepresentable {
//    func makeUIView(context: Context) -> UIView {
//        return CollectionViewTableViewCell(style: .default, reuseIdentifier: CollectionViewTableViewCell.identifier)
//    }
//
//    func updateUIView(_ uiView: UIView, context: Context) {
//        // No updates needed for static preview
//    }
//}
//
//struct CollectionViewTableViewCell_PreviewProvider: PreviewProvider {
//    static var previews: some View {
//        CollectionViewTableViewCell_Preview()
//            .previewLayout(.fixed(width: 375, height: 200))
//            .padding()
//            .previewDisplayName("CollectionViewTableViewCell Preview")
//    }
//}
//#endif

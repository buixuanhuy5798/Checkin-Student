//
//  UITableView+.swift
//  MovieDB
//
//  Created by cuonghx on 6/1/19.
//  Copyright © 2019 Sun*. All rights reserved.
//

import UIKit

extension UITableView {
    var isEmptyData: Binder<Bool> {
        return Binder(self) { tableView, isEmptyData in
            if isEmptyData {
                let frame = CGRect(x: 0,
                                   y: 0,
                                   width: tableView.frame.size.width,
                                   height: tableView.frame.size.height)
                let emptyView = EmptyDataView(frame: frame)
                tableView.backgroundView = emptyView
                tableView.separatorStyle = .none
            } else {
                tableView.separatorStyle = .singleLine
                tableView.backgroundView = nil
            }
        }
    }
}

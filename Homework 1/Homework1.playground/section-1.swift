// Playground - noun: a place where people can play

import UIKit

let view = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 300.0, height: 300.0))

view.backgroundColor = UIColor(red: 240.0, green: 230.0, blue: 242.0, alpha: 1.0)

let greenView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0))
greenView.backgroundColor = UIColor.greenColor()

let blueView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0))
blueView.backgroundColor = UIColor.blueColor()

let orangeView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0))
orangeView.backgroundColor = UIColor.orangeColor()

let yellowView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0))
yellowView.backgroundColor = UIColor.yellowColor()

let greenViewWidthConstraint = NSLayoutConstraint(item: greenView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 20.0)
let greenViewHeightConstraint = NSLayoutConstraint(item: greenView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 16.0)
let greenViewTopConstraint = NSLayoutConstraint(item: greenView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: -10.0)
let greenViewLeftConstraint = NSLayoutConstraint(item: greenView, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: -16.0)

let blueViewWidthConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 10.0)
let blueViewHeightConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 10.0)
let blueViewTopConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: -3.0)
let blueViewLeftConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: orangeView, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: -6.0)

let orangeViewWidthConstraint = NSLayoutConstraint(item: orangeView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 10.0)
let orangeViewHeightConstraint = NSLayoutConstraint(item: orangeView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 3.0)
let orangeViewTopConstraint = NSLayoutConstraint(item: orangeView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: -3.0)
let orangeViewLeftConstraint = NSLayoutConstraint(item: orangeView, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: -10.0)

let yellowViewWidthConstraint = NSLayoutConstraint(item: yellowView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: 3.0)
let yellowViewHeightConstraint = NSLayoutConstraint(item: yellowView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 10.0)
let yellowViewTopConstraint = NSLayoutConstraint(item: yellowView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: -10.0)
let yellowViewLeftConstraint = NSLayoutConstraint(item: yellowView, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: -10.0)

view.setTranslatesAutoresizingMaskIntoConstraints(false)
greenView.setTranslatesAutoresizingMaskIntoConstraints(false)
blueView.setTranslatesAutoresizingMaskIntoConstraints(false)
orangeView.setTranslatesAutoresizingMaskIntoConstraints(false)
yellowView.setTranslatesAutoresizingMaskIntoConstraints(false)

view.addSubview(greenView)
greenView.addSubview(blueView)
greenView.addSubview(orangeView)
greenView.addSubview(yellowView)

var constraints = [greenViewWidthConstraint, greenViewHeightConstraint, greenViewTopConstraint, greenViewLeftConstraint, blueViewWidthConstraint, blueViewHeightConstraint, blueViewTopConstraint, blueViewLeftConstraint, orangeViewWidthConstraint, orangeViewHeightConstraint, orangeViewTopConstraint, orangeViewLeftConstraint, yellowViewWidthConstraint, yellowViewHeightConstraint, yellowViewTopConstraint, yellowViewLeftConstraint]

view.addConstraints(constraints)
view.layoutIfNeeded()
view

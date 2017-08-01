//
//  ViewController.swift
//  TeambitionIntro
//
//  Created by sdq on 7/21/16.
//  Copyright © 2016 sdq. All rights reserved.
//

import UIKit
import RazzleDazzle

private let kScreenHeight = UIScreen.main.bounds.height
private let kScreenWidth = UIScreen.main.bounds.width
private let k6sHeight: CGFloat = 667
private let k6sWidth: CGFloat = 375
private let pixel = kScreenHeight / k6sHeight
private let widthRate = k6sWidth / kScreenWidth

class ViewController: AnimatedPagingScrollViewController {
    
    //page1
    fileprivate let page1Description = UIImageView(image: UIImage(named: "Page1Description"))
    fileprivate let operationPart = UIImageView(image: UIImage(named: "OperationPart"))
    fileprivate let developmentPart = UIImageView(image: UIImage(named: "DevelopmentPart"))
    fileprivate let designPart = UIImageView(image: UIImage(named: "DesignPart"))
    fileprivate let designLabel = UIImageView(image: UIImage(named: "DesignLabel"))
    fileprivate let aiLogo1 = UIImageView(image: UIImage(named: "AILogo1"))
    fileprivate let aiLogo2 = UIImageView(image: UIImage(named: "AILogo2"))
    fileprivate let indicators1 = UIImageView(image: UIImage(named: "Indicators1"))
    
    //page2
    fileprivate let page2Description = UIImageView(image: UIImage(named: "Page2Description"))
    fileprivate let memberA = UIImageView(image: UIImage(named: "MemberA"))
    fileprivate let memberB = UIImageView(image: UIImage(named: "MemberB"))
    fileprivate let memberC = UIImageView(image: UIImage(named: "MemberC"))
    fileprivate let checkmarkA = UIImageView(image: UIImage(named: "CheckMark"))
    fileprivate let checkmarkB = UIImageView(image: UIImage(named: "CheckMark"))
    fileprivate let checkmarkC = UIImageView(image: UIImage(named: "CheckMark"))
    fileprivate let addMember = UIImageView(image: UIImage(named: "AddMember"))
    fileprivate let inviteButton = UIImageView(image: UIImage(named: "InviteButton"))
    fileprivate let indicators2 = UIImageView(image: UIImage(named: "Indicators2"))
    
    //page3
    fileprivate let projectPage = UIImageView(image: UIImage(named: "ProjectPage"))
    fileprivate let projectItems = UIImageView(image: UIImage(named: "ProjectItems"))
    fileprivate let enterButton = UIImageView(image: UIImage(named: "EnterButton"))
    fileprivate let indicators3 = UIImageView(image: UIImage(named: "Indicators3"))

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLaunchView()
        configureViews()
        configureAnimations()
    }
    
    override func numberOfPages() -> Int {
        // Tell the scroll view how many pages it has
        return 3
    }
}

extension ViewController {
    
    fileprivate func setupLaunchView() {
        let launchView = UIView(frame: view.frame)
        launchView.backgroundColor = UIColor.white
        launchView.alpha = 1
        view.addSubview(launchView)
        
        let centerX = self.view.center.x
        let whiteCover1 = UIView(frame: CGRect(x: centerX - 110*pixel, y: 46*pixel, width: 80*pixel, height: 90*pixel))
        whiteCover1.backgroundColor = UIColor.white
        launchView.addSubview(whiteCover1)
        let whiteCover2 = UIView(frame: CGRect(x: centerX - 130*pixel, y: 205*pixel, width: 115*pixel, height: 92*pixel))
        whiteCover2.backgroundColor = UIColor.white
        launchView.addSubview(whiteCover2)
        let whiteCover3 = UIView(frame: CGRect(x: centerX - 115*pixel, y: 358*pixel, width: 90*pixel, height: 72*pixel))
        whiteCover3.backgroundColor = UIColor.white
        launchView.addSubview(whiteCover3)
        
        
        //others
        let logo = UIImageView(image: UIImage(named: "logo"))
        launchView.addSubview(logo)
        logo.center = launchView.center
        
        let moledkine = UIImageView(image: UIImage(named: "moledkine"))
        launchView.addSubview(moledkine)
        moledkine.alpha = 0
        let note = UIImageView(image: UIImage(named: "note"))
        launchView.addSubview(note)
        note.alpha = 0
        let pantone = UIImageView(image: UIImage(named: "pantone"))
        launchView.addSubview(pantone)
        pantone.alpha = 0
        let illustrator = UIImageView(image: UIImage(named: "illustrator"))
        launchView.addSubview(illustrator)
        illustrator.alpha = 0
        let terminal = UIImageView(image: UIImage(named: "terminal"))
        launchView.addSubview(terminal)
        terminal.alpha = 0
        let coffee = UIImageView(image: UIImage(named: "coffee"))
        launchView.addSubview(coffee)
        coffee.alpha = 0
        
        terminal.center = launchView.center
        pantone.center = launchView.center
        note.center = launchView.center
        moledkine.center = launchView.center
        illustrator.center = launchView.center
        coffee.center = launchView.center
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.6, options: [], animations: {
            coffee.alpha = 1
            illustrator.alpha = 1
            moledkine.alpha = 1
            note.alpha = 1
            pantone.alpha = 1
            terminal.alpha = 1
            moledkine.frame = CGRect(x: centerX - 111.5*pixel, y: 146*pixel, width: 52*pixel , height: 72*pixel)
            note.frame = CGRect(x: centerX + 49.5*pixel, y: 86*pixel, width: 43*pixel , height: 59*pixel)
            illustrator.frame = CGRect(x: centerX - 121.5*pixel, y: 400*pixel, width: 36*pixel , height: 53*pixel)
            pantone.frame = CGRect(x: centerX + 68.5*pixel, y: 218*pixel, width: 54*pixel , height: 74*pixel)
            coffee.frame = CGRect(x: centerX + 96.5*pixel, y: 430*pixel, width: 40*pixel , height: 47*pixel)
            terminal.frame = CGRect(x: centerX - 73.5*pixel, y: 525*pixel, width: 74*pixel , height: 61*pixel)
            }) { (complete) in
                UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.6, options: [], animations: {
                    launchView.backgroundColor = UIColor.clear
                    logo.alpha = 0
                    let centerX = self.view.center.x
                    moledkine.frame = CGRect(x: centerX - 108.5*pixel, y: 54*pixel, width: 52*pixel , height: 72*pixel)
                    note.frame = CGRect(x: centerX - 76.5*pixel, y: 75*pixel, width: 43*pixel , height: 59*pixel)
                    illustrator.frame = CGRect(x: centerX - 59.5*pixel, y: 215*pixel, width: 36*pixel , height: 53*pixel)
                    pantone.frame = CGRect(x: centerX - 127.5*pixel, y: 205*pixel, width: 54*pixel , height: 74*pixel)
                    coffee.frame = CGRect(x: centerX - 46*pixel, y: 395*pixel, width: 22*pixel , height: 26*pixel)
                    terminal.frame = CGRect(x: centerX - 113*pixel, y: 358*pixel, width: 76*pixel , height: 63*pixel)
                    }, completion: { (complete) in
                        UIView.animate(withDuration: 0.25, animations: {
                            launchView.alpha = 0
                            }, completion: { (complete) in
                                launchView.removeFromSuperview()
                        })
                })
        }
    }
}

extension ViewController {
    
    fileprivate func configureViews() {
        contentView.addSubview(page1Description)
        contentView.addSubview(operationPart)
        contentView.addSubview(developmentPart)
        contentView.addSubview(designPart)
        contentView.addSubview(page2Description)
        contentView.addSubview(addMember)
        contentView.addSubview(memberA)
        contentView.addSubview(memberB)
        contentView.addSubview(memberC)
        contentView.addSubview(checkmarkA)
        contentView.addSubview(checkmarkB)
        contentView.addSubview(checkmarkC)
        contentView.addSubview(inviteButton)
        contentView.addSubview(enterButton)
        contentView.addSubview(projectPage)
        contentView.addSubview(projectItems)
        contentView.addSubview(designLabel)
        contentView.addSubview(aiLogo1)
        contentView.addSubview(aiLogo2)
        contentView.addSubview(indicators1)
        contentView.addSubview(indicators2)
        contentView.addSubview(indicators3)
    }
    
    fileprivate func configureAnimations() {
        configurePage1Description()
        configureOperationPart()
        configureDevelopmentPart()
        configureDesignPart()
        configureDesignLabel()
        configureAILogo1()
        configureAILogo2()
        configurePage2Description()
        configureMemberA()
        configureMemberB()
        configureMemberC()
        configureCheckmarkA()
        configureCheckmarkB()
        configureCheckmarkC()
        configureInviteButton()
        configureAddMembers()
        configureProjectPage()
        configureProjectItems()
        configureEnterButton()
        configureIndicators1()
        configureIndicators2()
        configureIndicators3()
    }
    
    fileprivate func configurePage1Description() {
        let height = NSLayoutConstraint(item: page1Description, attribute: .height, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 99/k6sHeight, constant: 1)
        let width = NSLayoutConstraint(item: page1Description, attribute: .width, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 309/k6sHeight, constant: 1)
        let bottom = NSLayoutConstraint(item: page1Description, attribute: .bottom, relatedBy: .equal, toItem: scrollView, attribute: .bottom, multiplier: 1, constant: -94 * pixel)
        NSLayoutConstraint.activate([height, width, bottom])
        
        keepView(page1Description, onPage: 0)
    }
    
    fileprivate func configureOperationPart() {
        let height = NSLayoutConstraint(item: operationPart, attribute: .height, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 130/k6sHeight, constant: 1)
        let width = NSLayoutConstraint(item: operationPart, attribute: .width, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 305/k6sHeight, constant: 1)
        let top = NSLayoutConstraint(item: operationPart, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activate([height, width, top])
        
        keepView(operationPart, onPages: [0,1])
        
        let operationConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        operationConstraintAnimation[0] = (27*pixel)
        operationConstraintAnimation[0.7] = (-30*pixel)
        animator.addAnimation(operationConstraintAnimation)
        
        let operationAlphaAnimation = AlphaAnimation(view: operationPart)
        operationAlphaAnimation[0] = 1
        operationAlphaAnimation[0.7] = 0
        animator.addAnimation(operationAlphaAnimation)
    }
    
    fileprivate func configureDevelopmentPart() {
        let height = NSLayoutConstraint(item: developmentPart, attribute: .height, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 130/k6sHeight, constant: 1)
        let width = NSLayoutConstraint(item: developmentPart, attribute: .width, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 305/k6sHeight, constant: 1)
        let top = NSLayoutConstraint(item: developmentPart, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activate([height, width, top])
        
        keepView(developmentPart, onPages: [0,1])
        
        let developmentConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        developmentConstraintAnimation[0] = (327*pixel)
        developmentConstraintAnimation[0.7] = (377*pixel)
        animator.addAnimation(developmentConstraintAnimation)
        
        let developmentAlphaAnimation = AlphaAnimation(view: developmentPart)
        developmentAlphaAnimation[0] = 1
        developmentAlphaAnimation[0.7] = 0
        animator.addAnimation(developmentAlphaAnimation)
    }
    
    fileprivate func configureDesignPart() {
        let height = NSLayoutConstraint(item: designPart, attribute: .height, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 130/k6sHeight, constant: 1)
        let width = NSLayoutConstraint(item: designPart, attribute: .width, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 305/k6sHeight, constant: 1)
        let top = NSLayoutConstraint(item: designPart, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activate([height, width, top])
        
        keepView(designPart, onPages: [0,1])
        
        let designConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        designConstraintAnimation[0] = (177*pixel)
        designConstraintAnimation[0.7] = (127*pixel)
        animator.addAnimation(designConstraintAnimation)
        
        let designAlphaAnimation = AlphaAnimation(view: designPart)
        designAlphaAnimation[0] = 1
        designAlphaAnimation[0.7] = 0
        animator.addAnimation(designAlphaAnimation)
    }
    
    fileprivate func configureDesignLabel() {
        let height = NSLayoutConstraint(item: designLabel, attribute: .height, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 17/k6sHeight, constant: 1)
        let width = NSLayoutConstraint(item: designLabel, attribute: .width, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 51/k6sHeight, constant: 1)
        let top = NSLayoutConstraint(item: designLabel, attribute: .top, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activate([height, width, top])
        let page1 = 0.15 * widthRate
        let page2 = 1 - 0.09 * widthRate
        keepView(designLabel, onPages: [page1, page2, 2], atTimes: [0,1,2])
        
        let designLabelConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        designLabelConstraintAnimation[0] = (231*pixel)
        designLabelConstraintAnimation[1] = (61*pixel)
        designLabelConstraintAnimation[2] = (48*pixel)
        animator.addAnimation(designLabelConstraintAnimation)
    }
    
    fileprivate func configureAILogo1() {
        let height = NSLayoutConstraint(item: aiLogo1, attribute: .height, relatedBy: .lessThanOrEqual, toItem: scrollView, attribute: .height, multiplier: 19/k6sHeight, constant: 1)
        let width = NSLayoutConstraint(item: aiLogo1, attribute: .width, relatedBy: .lessThanOrEqual, toItem: scrollView, attribute: .height, multiplier: 19/k6sHeight, constant: 1)
        let top = NSLayoutConstraint(item: aiLogo1, attribute: .top, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activate([height, width, top])
        
        let page1 = -0.135 * widthRate
        let page2 = 1 - 0.29 * widthRate
        let page3 = 2 - 0.13 * widthRate
        keepView(aiLogo1, onPages: [page1, page2, page3], atTimes: [0,1,2])
        
        let aiLogo1ConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        aiLogo1ConstraintAnimation[0] = (231*pixel)
        aiLogo1ConstraintAnimation[1] = (72*pixel)
        aiLogo1ConstraintAnimation[2] = (48*pixel)
        animator.addAnimation(aiLogo1ConstraintAnimation)
    }
    
    fileprivate func configureAILogo2() {
        let height = NSLayoutConstraint(item: aiLogo2, attribute: .height, relatedBy: .lessThanOrEqual, toItem: scrollView, attribute: .height, multiplier: 53/k6sHeight, constant: 1)
        let width = NSLayoutConstraint(item: aiLogo2, attribute: .width, relatedBy: .lessThanOrEqual, toItem: scrollView, attribute: .height, multiplier: 30/k6sHeight, constant: 1)
        let top = NSLayoutConstraint(item: aiLogo2, attribute: .top, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activate([height, width, top])
        
        let page1 = -0.105 * widthRate
        let page2 = 1 - 0.26 * widthRate
        let page3 = 2 - 0.09 * widthRate
        keepView(aiLogo2, onPages: [page1, page2, page3], atTimes: [0,1,2])
        
        let aiLogo2ConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        aiLogo2ConstraintAnimation[0] = (214*pixel)
        aiLogo2ConstraintAnimation[1] = (55*pixel)
        aiLogo2ConstraintAnimation[2] = (30*pixel)
        animator.addAnimation(aiLogo2ConstraintAnimation)
        
        let aiLogo2AlphaAnimation = AlphaAnimation(view: aiLogo2)
        aiLogo2AlphaAnimation[0] = 1
        aiLogo2AlphaAnimation[1] = 1
        aiLogo2AlphaAnimation[1.7] = 0
        animator.addAnimation(aiLogo2AlphaAnimation)
    }
    
    fileprivate func configurePage2Description() {
        let height = NSLayoutConstraint(item: page2Description, attribute: .height, relatedBy: .lessThanOrEqual, toItem: scrollView, attribute: .height, multiplier: 99/k6sHeight, constant: 1)
        let width = NSLayoutConstraint(item: page2Description, attribute: .width, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 309/k6sHeight, constant: 1)
        let bottom = NSLayoutConstraint(item: page2Description, attribute: .bottom, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .bottom, multiplier: 1, constant: -(94*pixel))
        NSLayoutConstraint.activate([height, width, bottom])
        keepView(page2Description, onPage: 1)
    }
    
    fileprivate func configureMemberA() {
        let height = NSLayoutConstraint(item: memberA, attribute: .height, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 80/k6sHeight, constant: 1)
        let width = NSLayoutConstraint(item: memberA, attribute: .width, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 259/k6sHeight, constant: 1)
        let top = NSLayoutConstraint(item: memberA, attribute: .top, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activate([height, width, top])
        
        keepView(memberA, onPages: [0.7,2], atTimes: [0.7,2])
        
        let memberAAnimation = AlphaAnimation(view: memberA)
        memberAAnimation[0] = 0
        memberAAnimation[0.7] = 1
        memberAAnimation[2] = 0
        animator.addAnimation(memberAAnimation)
        
        let memberAConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        memberAConstraintAnimation[1] = (135*pixel)
        memberAConstraintAnimation[1.5] = (50*pixel)
        animator.addAnimation(memberAConstraintAnimation)
        
        let memberAScaleAnimation = ScaleAnimation(view: memberA)
        memberAScaleAnimation[1] = 1
        memberAScaleAnimation[1.5] = 0.8
        animator.addAnimation(memberAScaleAnimation)
    }
    
    fileprivate func configureMemberB() {
        let height = NSLayoutConstraint(item: memberB, attribute: .height, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 80/k6sHeight, constant: 1)
        let width = NSLayoutConstraint(item: memberB, attribute: .width, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 259/k6sHeight, constant: 1)
        let top = NSLayoutConstraint(item: memberB, attribute: .top, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activate([height, width, top])
        keepView(memberB, onPages: [0.9, 0.7, 2], atTimes: [0.5, 0.7, 2])
        
        let MemberBAnimation = AlphaAnimation(view: memberB)
        MemberBAnimation[0] = 0
        MemberBAnimation[0.7] = 1
        MemberBAnimation[2] = 0
        animator.addAnimation(MemberBAnimation)
        
        let memberBConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        memberBConstraintAnimation[1] = (233*pixel)
        memberBConstraintAnimation[1.5] = (50*pixel)
        animator.addAnimation(memberBConstraintAnimation)
        
        let memberBScaleAnimation = ScaleAnimation(view: memberB)
        memberBScaleAnimation[1] = 1
        memberBScaleAnimation[1.5] = 0.8
        animator.addAnimation(memberBScaleAnimation)
    }
    
    fileprivate func configureMemberC() {
        let height = NSLayoutConstraint(item: memberC, attribute: .height, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 80/k6sHeight, constant: 1)
        let width = NSLayoutConstraint(item: memberC, attribute: .width, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 259/k6sHeight, constant: 1)
        let top = NSLayoutConstraint(item: memberC, attribute: .top, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .top, multiplier: 1, constant: (331*pixel))
        NSLayoutConstraint.activate([height, width, top])
        keepView(memberC, onPages: [1.1, 0.7, 2], atTimes: [0.5, 0.7, 2])
        
        let memberCAnimation = AlphaAnimation(view: memberC)
        memberCAnimation[0] = 0
        memberCAnimation[0.7] = 1
        memberCAnimation[2] = 0
        animator.addAnimation(memberCAnimation)
        
        let memberCConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        memberCConstraintAnimation[1] = (331*pixel)
        memberCConstraintAnimation[1.5] = (50*pixel)
        animator.addAnimation(memberCConstraintAnimation)
        
        let memberCScaleAnimation = ScaleAnimation(view: memberC)
        memberCScaleAnimation[1] = 1
        memberCScaleAnimation[1.5] = 0.8
        animator.addAnimation(memberCScaleAnimation)
    }
    
    fileprivate func configureAddMembers() {
        let top = NSLayoutConstraint(item: addMember, attribute: .top, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .top, multiplier: 1, constant: 41 * pixel)
        let height = NSLayoutConstraint(item: addMember, attribute: .height, relatedBy: .lessThanOrEqual, toItem: scrollView, attribute: .height, multiplier: 394/k6sHeight, constant: 1)
        let width = NSLayoutConstraint(item: addMember, attribute: .width, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 305/k6sHeight, constant: 1)
        NSLayoutConstraint.activate([top, width, height])
        keepView(addMember, onPages: [0,1,2])
        let addMemberAnimation = AlphaAnimation(view: addMember)
        addMemberAnimation[0] = 0
        addMemberAnimation[1] = 1
        addMemberAnimation[2] = 0
        animator.addAnimation(addMemberAnimation)
    }
    
    fileprivate func configureCheckmarkA() {
        let height = NSLayoutConstraint(item: checkmarkA, attribute: .height, relatedBy: .lessThanOrEqual, toItem: scrollView, attribute: .height, multiplier: 11/k6sHeight, constant: 1)
        let top = NSLayoutConstraint(item: checkmarkA, attribute: .top, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .top, multiplier: 1, constant: 170*pixel)
        NSLayoutConstraint.activate([height,top])
        
        let page1 = 0.2 * widthRate
        let page2 = 1 + 0.2 * widthRate
        let page3 = 2 + 0.2 * widthRate
        keepView(checkmarkA, onPages: [page1, page2, page3], atTimes: [0, 1, 2])
        
        let checkmarkAScaleAnimation = ScaleAnimation(view: checkmarkA)
        checkmarkAScaleAnimation[0.7] = 0.8
        checkmarkAScaleAnimation[0.8] = 1
        animator.addAnimation(checkmarkAScaleAnimation)
        
        let checkmarkAAnimation = AlphaAnimation(view: checkmarkA)
        checkmarkAAnimation[0.7] = 0
        checkmarkAAnimation[0.8] = 1
        checkmarkAAnimation[1.5] = 0
        animator.addAnimation(checkmarkAAnimation)
        
        let checkmarkAConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        checkmarkAConstraintAnimation[1] = (170*pixel)
        checkmarkAConstraintAnimation[1.5] = (85*pixel)
        animator.addAnimation(checkmarkAConstraintAnimation)
    }
    
    fileprivate func configureCheckmarkB() {
        let height = NSLayoutConstraint(item: checkmarkB, attribute: .height, relatedBy: .lessThanOrEqual, toItem: scrollView, attribute: .height, multiplier: 11/k6sHeight, constant: 1)
        let top = NSLayoutConstraint(item: checkmarkB, attribute: .top, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .top, multiplier: 1, constant: 268*pixel)
        NSLayoutConstraint.activate([height,top])
        
        let page1 = 0.2 * widthRate
        let page2 = 1 + 0.2 * widthRate
        let page3 = 2 + 0.2 * widthRate
        keepView(checkmarkB, onPages: [page1, page2, page3], atTimes: [0, 1, 2])
        
        let checkmarkBScaleAnimation = ScaleAnimation(view: checkmarkB)
        checkmarkBScaleAnimation[0.8] = 0.8
        checkmarkBScaleAnimation[0.9] = 1
        animator.addAnimation(checkmarkBScaleAnimation)
        
        let checkmarkBAnimation = AlphaAnimation(view: checkmarkB)
        checkmarkBAnimation[0.8] = 0
        checkmarkBAnimation[0.9] = 1
        checkmarkBAnimation[1.5] = 0
        animator.addAnimation(checkmarkBAnimation)
        
        let checkmarkBConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        checkmarkBConstraintAnimation[1] = (268*pixel)
        checkmarkBConstraintAnimation[1.5] = (85*pixel)
        animator.addAnimation(checkmarkBConstraintAnimation)
    }
    
    fileprivate func configureCheckmarkC() {
        let height = NSLayoutConstraint(item: checkmarkC, attribute: .height, relatedBy: .lessThanOrEqual, toItem: scrollView, attribute: .height, multiplier: 11/k6sHeight, constant: 1)
        let top = NSLayoutConstraint(item: checkmarkC, attribute: .top, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .top, multiplier: 1, constant: 366*pixel)
        NSLayoutConstraint.activate([height,top])
        
        let page1 = 0.2 * widthRate
        let page2 = 1 + 0.2 * widthRate
        let page3 = 2 + 0.2 * widthRate
        keepView(checkmarkC, onPages: [page1, page2, page3], atTimes: [0, 1, 2])
        
        let checkmarkCScaleAnimation = ScaleAnimation(view: checkmarkC)
        checkmarkCScaleAnimation[0.9] = 0.8
        checkmarkCScaleAnimation[1] = 1
        animator.addAnimation(checkmarkCScaleAnimation)
        
        let checkmarkCAnimation = AlphaAnimation(view: checkmarkC)
        checkmarkCAnimation[0.9] = 0
        checkmarkCAnimation[1] = 1
        checkmarkCAnimation[1.5] = 0
        animator.addAnimation(checkmarkCAnimation)
        
        let checkmarkCConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        checkmarkCConstraintAnimation[1] = (366*pixel)
        checkmarkCConstraintAnimation[1.5] = (85*pixel)
        animator.addAnimation(checkmarkCConstraintAnimation)
    }
    
    fileprivate func configureInviteButton() {
        let height = NSLayoutConstraint(item: inviteButton, attribute: .height, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 29/k6sHeight, constant: 1)
        let width = NSLayoutConstraint(item: inviteButton, attribute: .width, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 29/k6sHeight, constant: 1)
        let top = NSLayoutConstraint(item: inviteButton, attribute: .top, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .top, multiplier: 1, constant: 66*pixel)
        NSLayoutConstraint.activate([height, width, top])
        
        let page1 = 0.3 * widthRate
        let page2 = 1 + 0.3 * widthRate
        let page3 = 2 + 0.3 * widthRate
        keepView(inviteButton, onPages: [page1, page2, page3], atTimes: [0, 1, 2])
        
        let inviteButtonScaleAnimation = ScaleAnimation(view: inviteButton)
        inviteButtonScaleAnimation[0.8] = 0
        inviteButtonScaleAnimation[1] = 1
        animator.addAnimation(inviteButtonScaleAnimation)
        
        let inviteButtonAnimation = AlphaAnimation(view: inviteButton)
        inviteButtonAnimation[0] = 0
        inviteButtonAnimation[1] = 1
        inviteButtonAnimation[2] = 0
        animator.addAnimation(inviteButtonAnimation)
    }

    fileprivate func configureProjectPage() {
        let top = NSLayoutConstraint(item: projectPage, attribute: .top, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .top, multiplier: 1, constant: 31 * pixel)
        let height = NSLayoutConstraint(item: projectPage, attribute: .height, relatedBy: .lessThanOrEqual, toItem: scrollView, attribute: .height, multiplier: 422/k6sHeight, constant: 1)
        let width = NSLayoutConstraint(item: projectPage, attribute: .width, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 305/k6sHeight, constant: 1)
        NSLayoutConstraint.activate([top, width, height])
        keepView(projectPage, onPages: [1,2])
        let projectPageAnimation = AlphaAnimation(view: projectPage)
        projectPageAnimation[1] = 0
        projectPageAnimation[2] = 1
        animator.addAnimation(projectPageAnimation)
    }
    
    fileprivate func configureProjectItems() {
        let top = NSLayoutConstraint(item: projectItems, attribute: .top, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .top, multiplier: 1, constant: kScreenHeight)
        let height = NSLayoutConstraint(item: projectItems, attribute: .height, relatedBy: .lessThanOrEqual, toItem: scrollView, attribute: .height, multiplier: 344/k6sHeight, constant: 1)
        let width = NSLayoutConstraint(item: projectItems, attribute: .width, relatedBy: .equal, toItem: scrollView, attribute: .height, multiplier: 245/k6sHeight, constant: 1)
        NSLayoutConstraint.activate([top, width, height])
        
        keepView(projectItems, onPages: [1,2])
        
        let projectItemsAlphaAnimation = AlphaAnimation(view: projectItems)
        projectItemsAlphaAnimation[1.6] = 0
        projectItemsAlphaAnimation[1.7] = 0.8
        projectItemsAlphaAnimation[2] = 1
        animator.addAnimation(projectItemsAlphaAnimation)
        
        let projectItemsConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        projectItemsConstraintAnimation[1.6] = 200*pixel
        projectItemsConstraintAnimation[1.8] = 109*pixel
        projectItemsConstraintAnimation[1.9] = 105*pixel
        projectItemsConstraintAnimation[2] = 109*pixel
        animator.addAnimation(projectItemsConstraintAnimation)
    }

    fileprivate func configureEnterButton() {
        let height = NSLayoutConstraint(item: enterButton, attribute: .height, relatedBy: .lessThanOrEqual, toItem: scrollView, attribute: .height, multiplier: 50/k6sHeight, constant: 1)
        let width = NSLayoutConstraint(item: enterButton, attribute: .width, relatedBy: .lessThanOrEqual, toItem: scrollView, attribute: .height, multiplier: 291/k6sHeight, constant: 1)
        let bottom = NSLayoutConstraint(item: enterButton, attribute: .bottom, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .bottom, multiplier: 1, constant: -(105*pixel))
        NSLayoutConstraint.activate([height, width, bottom])
        keepView(enterButton, onPage: 2)
    }
    
    //page control
    fileprivate func configureIndicators1() {
        let height = NSLayoutConstraint(item: indicators1, attribute: .height, relatedBy: .lessThanOrEqual, toItem: scrollView, attribute: .height, multiplier: 1, constant: 12*pixel)
        let bottom = NSLayoutConstraint(item: indicators1, attribute: .bottom, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .bottom, multiplier: 1, constant: -(30*pixel))
        NSLayoutConstraint.activate([height,bottom])
        keepView(indicators1, onPages: [-1,0,1,2])
        
        let indicators1AlphaAnimation = AlphaAnimation(view: indicators1)
        indicators1AlphaAnimation[0] = 1
        indicators1AlphaAnimation[1] = 0
        indicators1AlphaAnimation[2] = 0
        animator.addAnimation(indicators1AlphaAnimation)
    }

    fileprivate func configureIndicators2() {
        let height = NSLayoutConstraint(item: indicators2, attribute: .height, relatedBy: .lessThanOrEqual, toItem: scrollView, attribute: .height, multiplier: 1, constant: 12*pixel)
        let bottom = NSLayoutConstraint(item: indicators2, attribute: .bottom, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .bottom, multiplier: 1, constant: -(30*pixel))
        NSLayoutConstraint.activate([height,bottom])
        keepView(indicators2, onPages: [0,1,2])
        
        let indicators2AlphaAnimation = AlphaAnimation(view: indicators2)
        indicators2AlphaAnimation[0] = 0
        indicators2AlphaAnimation[1] = 1
        indicators2AlphaAnimation[2] = 0
        animator.addAnimation(indicators2AlphaAnimation)
    }
    
    fileprivate func configureIndicators3() {
        let height = NSLayoutConstraint(item: indicators3, attribute: .height, relatedBy: .lessThanOrEqual, toItem: scrollView, attribute: .height, multiplier: 1, constant: 12*pixel)
        let bottom = NSLayoutConstraint(item: indicators3, attribute: .bottom, relatedBy: .greaterThanOrEqual, toItem: scrollView, attribute: .bottom, multiplier: 1, constant: -(30*pixel))
        NSLayoutConstraint.activate([height,bottom])
        keepView(indicators3, onPages: [0,1,2,3])
        
        let indicators3AlphaAnimation = AlphaAnimation(view: indicators3)
        indicators3AlphaAnimation[0] = 0
        indicators3AlphaAnimation[1] = 0
        indicators3AlphaAnimation[2] = 1
        animator.addAnimation(indicators3AlphaAnimation)
    }
}


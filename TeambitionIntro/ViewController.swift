//
//  ViewController.swift
//  TeambitionIntro
//
//  Created by sdq on 7/21/16.
//  Copyright © 2016 sdq. All rights reserved.
//

import UIKit
import RazzleDazzle

private let kScreenHeight = UIScreen.mainScreen().bounds.height
private let pixel = kScreenHeight / 667

class ViewController: AnimatedPagingScrollViewController {
    
    //page1
    private let page1Description = UIImageView(image: UIImage(named: "Page1Description"))
    private let operationPart = UIImageView(image: UIImage(named: "OperationPart"))
    private let developmentPart = UIImageView(image: UIImage(named: "DevelopmentPart"))
    private let designPart = UIImageView(image: UIImage(named: "DesignPart"))
    private let designLabel = UIImageView(image: UIImage(named: "DesignLabel"))
    private let aiLogo1 = UIImageView(image: UIImage(named: "AILogo1"))
    private let aiLogo2 = UIImageView(image: UIImage(named: "AILogo2"))
    private let indicators1 = UIImageView(image: UIImage(named: "Indicators1"))
    
    //page2
    private let page2Description = UIImageView(image: UIImage(named: "Page2Description"))
    private let memberA = UIImageView(image: UIImage(named: "MemberA"))
    private let memberB = UIImageView(image: UIImage(named: "MemberB"))
    private let memberC = UIImageView(image: UIImage(named: "MemberC"))
    private let checkmarkA = UIImageView(image: UIImage(named: "CheckMark"))
    private let checkmarkB = UIImageView(image: UIImage(named: "CheckMark"))
    private let checkmarkC = UIImageView(image: UIImage(named: "CheckMark"))
    private let addMember = UIImageView(image: UIImage(named: "AddMember"))
    private let inviteButton = UIImageView(image: UIImage(named: "InviteButton"))
    private let indicators2 = UIImageView(image: UIImage(named: "Indicators2"))
    
    //page3
    private let projectPage = UIImageView(image: UIImage(named: "ProjectPage"))
    private let projectItems = UIImageView(image: UIImage(named: "ProjectItems"))
    private let enterButton = UIImageView(image: UIImage(named: "EnterButton"))
    private let indicators3 = UIImageView(image: UIImage(named: "Indicators3"))

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLaunchView()
        configureViews()
        configureAnimations()
        prefersStatusBarHidden()
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func numberOfPages() -> Int {
        // Tell the scroll view how many pages it has
        return 3
    }
}

extension ViewController {
    
    private func setupLaunchView() {
        let launchView = UIView(frame: view.frame)
        launchView.backgroundColor = UIColor.whiteColor()
        launchView.alpha = 1
        view.addSubview(launchView)
        
        let centerX = self.view.center.x
        let whiteCover1 = UIView(frame: CGRect(x: centerX - 110*pixel, y: 46*pixel, width: 80*pixel, height: 85*pixel))
        whiteCover1.backgroundColor = UIColor.whiteColor()
        launchView.addSubview(whiteCover1)
        let whiteCover2 = UIView(frame: CGRect(x: centerX - 130*pixel, y: 205*pixel, width: 100*pixel, height: 90*pixel))
        whiteCover2.backgroundColor = UIColor.whiteColor()
        launchView.addSubview(whiteCover2)
        let whiteCover3 = UIView(frame: CGRect(x: centerX - 115*pixel, y: 358*pixel, width: 90*pixel, height: 70*pixel))
        whiteCover3.backgroundColor = UIColor.whiteColor()
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
        
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.6, options: [], animations: {
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
                UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.6, options: [], animations: {
                    launchView.backgroundColor = UIColor.clearColor()
                    logo.alpha = 0
                    let centerX = self.view.center.x
                    moledkine.frame = CGRect(x: centerX - 108.5*pixel, y: 48*pixel, width: 52*pixel , height: 72*pixel)
                    note.frame = CGRect(x: centerX - 76.5*pixel, y: 68*pixel, width: 43*pixel , height: 59*pixel)
                    illustrator.frame = CGRect(x: centerX - 65.5*pixel, y: 214*pixel, width: 36*pixel , height: 53*pixel)
                    pantone.frame = CGRect(x: centerX - 127.5*pixel, y: 205*pixel, width: 54*pixel , height: 74*pixel)
                    coffee.frame = CGRect(x: centerX - 46.5*pixel, y: 394*pixel, width: 23*pixel , height: 27*pixel)
                    terminal.frame = CGRect(x: centerX - 112.5*pixel, y: 358*pixel, width: 74*pixel , height: 61*pixel)
                    }, completion: { (complete) in
                        UIView.animateWithDuration(0.4, animations: {
                            launchView.alpha = 0
                            }, completion: { (complete) in
                                launchView.removeFromSuperview()
                        })
                })
        }
    }
}

extension ViewController {
    
    private func configureViews() {
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
    
    private func configureAnimations() {
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
    
    private func configurePage1Description() {
        let height = NSLayoutConstraint(item: page1Description, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 99*pixel)
        let bottom = NSLayoutConstraint(item: page1Description, attribute: .Bottom, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Bottom, multiplier: 1, constant: -94 * pixel)
        NSLayoutConstraint.activateConstraints([height, bottom])
        
        keepView(page1Description, onPage: 0)
    }
    
    private func configureOperationPart() {
        let height = NSLayoutConstraint(item: operationPart, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 137*pixel)
        let top = NSLayoutConstraint(item: operationPart, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activateConstraints([height, top])
        
        keepView(operationPart, onPages: [0,1])
        
        let operationConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        operationConstraintAnimation[0] = (20*pixel)
        operationConstraintAnimation[0.7] = (-30*pixel)
        animator.addAnimation(operationConstraintAnimation)
        
        let operationAlphaAnimation = AlphaAnimation(view: operationPart)
        operationAlphaAnimation[0] = 1
        operationAlphaAnimation[0.7] = 0
        animator.addAnimation(operationAlphaAnimation)
    }
    
    private func configureDevelopmentPart() {
        let height = NSLayoutConstraint(item: developmentPart, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 137*pixel)
        let top = NSLayoutConstraint(item: developmentPart, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activateConstraints([height, top])
        
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
    
    private func configureDesignPart() {
        let height = NSLayoutConstraint(item: designPart, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 137*pixel)
        let top = NSLayoutConstraint(item: designPart, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activateConstraints([height, top])
        
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
    
    private func configureDesignLabel() {
        let height = NSLayoutConstraint(item: designLabel, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 22*pixel)
        let top = NSLayoutConstraint(item: designLabel, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activateConstraints([height, top])
        
        keepView(designLabel, onPages: [0.15, 0.9, 2], atTimes: [0,1,2])
        
        let designLabelConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        designLabelConstraintAnimation[0] = (231*pixel)
        designLabelConstraintAnimation[1] = (61*pixel)
        designLabelConstraintAnimation[2] = (48*pixel)
        animator.addAnimation(designLabelConstraintAnimation)
    }
    
    private func configureAILogo1() {
        let height = NSLayoutConstraint(item: aiLogo1, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 19*pixel)
        let top = NSLayoutConstraint(item: aiLogo1, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activateConstraints([height, top])
        
        keepView(aiLogo1, onPages: [-0.15, 0.7, 1.88], atTimes: [0,1,2])
        
        let aiLogo1ConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        aiLogo1ConstraintAnimation[0] = (231*pixel)
        aiLogo1ConstraintAnimation[1] = (72*pixel)
        aiLogo1ConstraintAnimation[2] = (46*pixel)
        animator.addAnimation(aiLogo1ConstraintAnimation)
    }
    
    private func configureAILogo2() {
        let height = NSLayoutConstraint(item: aiLogo2, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 53*pixel)
        let top = NSLayoutConstraint(item: aiLogo2, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activateConstraints([height, top])
        
        keepView(aiLogo2, onPages: [-0.12, 0.73, 1.91], atTimes: [0,1,2])
        
        let aiLogo2ConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        aiLogo2ConstraintAnimation[0] = (212*pixel)
        aiLogo2ConstraintAnimation[1] = (55*pixel)
        aiLogo2ConstraintAnimation[2] = (30*pixel)
        animator.addAnimation(aiLogo2ConstraintAnimation)
        
        let aiLogo2AlphaAnimation = AlphaAnimation(view: aiLogo2)
        aiLogo2AlphaAnimation[0] = 1
        aiLogo2AlphaAnimation[1] = 1
        aiLogo2AlphaAnimation[1.7] = 0
        animator.addAnimation(aiLogo2AlphaAnimation)
    }
    
    private func configurePage2Description() {
        let height = NSLayoutConstraint(item: page2Description, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 99*pixel)
        let bottom = NSLayoutConstraint(item: page2Description, attribute: .Bottom, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Bottom, multiplier: 1, constant: -(94*pixel))
        NSLayoutConstraint.activateConstraints([height,bottom])
        keepView(page2Description, onPage: 1)
    }
    
    private func configureMemberA() {
        let height = NSLayoutConstraint(item: memberA, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 80*pixel)
        let top = NSLayoutConstraint(item: memberA, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activateConstraints([height,top])
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
    
    private func configureMemberB() {
        let height = NSLayoutConstraint(item: memberB, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 80*pixel)
        let top = NSLayoutConstraint(item: memberB, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activateConstraints([height,top])
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
    
    private func configureMemberC() {
        let height = NSLayoutConstraint(item: memberC, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 80*pixel)
        let top = NSLayoutConstraint(item: memberC, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: (331*pixel))
        NSLayoutConstraint.activateConstraints([height,top])
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
    
    private func configureAddMembers() {
        let top = NSLayoutConstraint(item: addMember, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: 41*pixel)
        let height = NSLayoutConstraint(item: addMember, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 394*pixel)
        NSLayoutConstraint.activateConstraints([top,height])
        keepView(addMember, onPages: [0,1,2])
        let addMemberAnimation = AlphaAnimation(view: addMember)
        addMemberAnimation[0] = 0
        addMemberAnimation[1] = 1
        addMemberAnimation[2] = 0
        animator.addAnimation(addMemberAnimation)
    }
    
    private func configureCheckmarkA() {
        let height = NSLayoutConstraint(item: checkmarkA, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 11*pixel)
        let top = NSLayoutConstraint(item: checkmarkA, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: 170*pixel)
        NSLayoutConstraint.activateConstraints([height,top])
        keepView(checkmarkA, onPages: [0.2, 1.2, 2.2], atTimes: [0, 1, 2])
        
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
    
    private func configureCheckmarkB() {
        let height = NSLayoutConstraint(item: checkmarkB, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 11*pixel)
        let top = NSLayoutConstraint(item: checkmarkB, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: 268*pixel)
        NSLayoutConstraint.activateConstraints([height,top])
        keepView(checkmarkB, onPages: [0.2, 1.2, 2.2], atTimes: [0, 1, 2])
        
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
    
    private func configureCheckmarkC() {
        let height = NSLayoutConstraint(item: checkmarkC, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 11*pixel)
        let top = NSLayoutConstraint(item: checkmarkC, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: 366*pixel)
        NSLayoutConstraint.activateConstraints([height,top])
        keepView(checkmarkC, onPages: [0.2, 1.2, 2.2], atTimes: [0, 1, 2])
        
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
    
    private func configureInviteButton() {
        let height = NSLayoutConstraint(item: inviteButton, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 29*pixel)
        let top = NSLayoutConstraint(item: inviteButton, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: 66*pixel)
        NSLayoutConstraint.activateConstraints([height,top])
        keepView(inviteButton, onPages: [0.3, 1.3, 2.3], atTimes: [0, 1, 2])
        
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

    private func configureProjectPage() {
        let top = NSLayoutConstraint(item: projectPage, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: 31*pixel)
        let height = NSLayoutConstraint(item: projectPage, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 422*pixel)
        NSLayoutConstraint.activateConstraints([top,height])
        keepView(projectPage, onPages: [1,2])
        let projectPageAnimation = AlphaAnimation(view: projectPage)
        projectPageAnimation[1] = 0
        projectPageAnimation[2] = 1
        animator.addAnimation(projectPageAnimation)
    }
    
    private func configureProjectItems() {
        let top = NSLayoutConstraint(item: projectItems, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        let height = NSLayoutConstraint(item: projectItems, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 344*pixel)
        NSLayoutConstraint.activateConstraints([top,height])
        
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

    private func configureEnterButton() {
        let height = NSLayoutConstraint(item: enterButton, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 50*pixel)
        let bottom = NSLayoutConstraint(item: enterButton, attribute: .Bottom, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Bottom, multiplier: 1, constant: -(105*pixel))
        NSLayoutConstraint.activateConstraints([height,bottom])
        keepView(enterButton, onPage: 2)
    }
    
    //page control
    private func configureIndicators1() {
        let height = NSLayoutConstraint(item: indicators1, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 12*pixel)
        let bottom = NSLayoutConstraint(item: indicators1, attribute: .Bottom, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Bottom, multiplier: 1, constant: -(30*pixel))
        NSLayoutConstraint.activateConstraints([height,bottom])
        keepView(indicators1, onPages: [-1,0,1,2])
        
        let indicators1AlphaAnimation = AlphaAnimation(view: indicators1)
        indicators1AlphaAnimation[0] = 1
        indicators1AlphaAnimation[1] = 0
        indicators1AlphaAnimation[2] = 0
        animator.addAnimation(indicators1AlphaAnimation)
    }

    private func configureIndicators2() {
        let height = NSLayoutConstraint(item: indicators2, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 12*pixel)
        let bottom = NSLayoutConstraint(item: indicators2, attribute: .Bottom, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Bottom, multiplier: 1, constant: -(30*pixel))
        NSLayoutConstraint.activateConstraints([height,bottom])
        keepView(indicators2, onPages: [0,1,2])
        
        let indicators2AlphaAnimation = AlphaAnimation(view: indicators2)
        indicators2AlphaAnimation[0] = 0
        indicators2AlphaAnimation[1] = 1
        indicators2AlphaAnimation[2] = 0
        animator.addAnimation(indicators2AlphaAnimation)
    }
    
    private func configureIndicators3() {
        let height = NSLayoutConstraint(item: indicators3, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: 12*pixel)
        let bottom = NSLayoutConstraint(item: indicators3, attribute: .Bottom, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Bottom, multiplier: 1, constant: -(30*pixel))
        NSLayoutConstraint.activateConstraints([height,bottom])
        keepView(indicators3, onPages: [0,1,2,3])
        
        let indicators3AlphaAnimation = AlphaAnimation(view: indicators3)
        indicators3AlphaAnimation[0] = 0
        indicators3AlphaAnimation[1] = 0
        indicators3AlphaAnimation[2] = 1
        animator.addAnimation(indicators3AlphaAnimation)
    }
}


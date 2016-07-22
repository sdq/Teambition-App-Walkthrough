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
        let height = NSLayoutConstraint(item: page1Description, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (99/667))
        let bottom = NSLayoutConstraint(item: page1Description, attribute: .Bottom, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Bottom, multiplier: 1, constant: -(94/667) * kScreenHeight)
        NSLayoutConstraint.activateConstraints([height, bottom])
        
        keepView(page1Description, onPage: 0)
    }
    
    private func configureOperationPart() {
        let height = NSLayoutConstraint(item: operationPart, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (137/667))
        let top = NSLayoutConstraint(item: operationPart, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activateConstraints([height, top])
        
        keepView(operationPart, onPages: [0,1])
        
        let operationConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        operationConstraintAnimation[0] = (20/667) * kScreenHeight
        operationConstraintAnimation[0.7] = (-30/667) * kScreenHeight
        animator.addAnimation(operationConstraintAnimation)
        
        let operationAlphaAnimation = AlphaAnimation(view: operationPart)
        operationAlphaAnimation[0] = 1
        operationAlphaAnimation[0.7] = 0
        animator.addAnimation(operationAlphaAnimation)
    }
    
    private func configureDevelopmentPart() {
        let height = NSLayoutConstraint(item: developmentPart, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (137/667))
        let top = NSLayoutConstraint(item: developmentPart, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activateConstraints([height, top])
        
        keepView(developmentPart, onPages: [0,1])
        
        let developmentConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        developmentConstraintAnimation[0] = (327/667) * kScreenHeight
        developmentConstraintAnimation[0.7] = (377/667) * kScreenHeight
        animator.addAnimation(developmentConstraintAnimation)
        
        let developmentAlphaAnimation = AlphaAnimation(view: developmentPart)
        developmentAlphaAnimation[0] = 1
        developmentAlphaAnimation[0.7] = 0
        animator.addAnimation(developmentAlphaAnimation)
    }
    
    private func configureDesignPart() {
        let height = NSLayoutConstraint(item: designPart, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (137/667))
        let top = NSLayoutConstraint(item: designPart, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activateConstraints([height, top])
        
        keepView(designPart, onPages: [0,1])
        
        let designConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        designConstraintAnimation[0] = (177/667) * kScreenHeight
        designConstraintAnimation[0.7] = (127/667) * kScreenHeight
        animator.addAnimation(designConstraintAnimation)
        
        let designAlphaAnimation = AlphaAnimation(view: designPart)
        designAlphaAnimation[0] = 1
        designAlphaAnimation[0.7] = 0
        animator.addAnimation(designAlphaAnimation)
    }
    
    private func configureDesignLabel() {
        let height = NSLayoutConstraint(item: designLabel, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (22/667))
        let top = NSLayoutConstraint(item: designLabel, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activateConstraints([height, top])
        
        keepView(designLabel, onPages: [0.15, 0.9, 2], atTimes: [0,1,2])
        
        let designLabelConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        designLabelConstraintAnimation[0] = (231/667) * kScreenHeight
        designLabelConstraintAnimation[1] = (61/667) * kScreenHeight
        designLabelConstraintAnimation[2] = (48/667) * kScreenHeight
        animator.addAnimation(designLabelConstraintAnimation)
    }
    
    private func configureAILogo1() {
        let height = NSLayoutConstraint(item: aiLogo1, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (19/667))
        let top = NSLayoutConstraint(item: aiLogo1, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activateConstraints([height, top])
        
        keepView(aiLogo1, onPages: [-0.15, 0.7, 1.88], atTimes: [0,1,2])
        
        let aiLogo1ConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        aiLogo1ConstraintAnimation[0] = (231/667) * kScreenHeight
        aiLogo1ConstraintAnimation[1] = (72/667) * kScreenHeight
        aiLogo1ConstraintAnimation[2] = (46/667) * kScreenHeight
        animator.addAnimation(aiLogo1ConstraintAnimation)
    }
    
    private func configureAILogo2() {
        let height = NSLayoutConstraint(item: aiLogo2, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (53/667))
        let top = NSLayoutConstraint(item: aiLogo2, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activateConstraints([height, top])
        
        keepView(aiLogo2, onPages: [-0.12, 0.73, 1.91], atTimes: [0,1,2])
        
        let aiLogo2ConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        aiLogo2ConstraintAnimation[0] = (212/667) * kScreenHeight
        aiLogo2ConstraintAnimation[1] = (55/667) * kScreenHeight
        aiLogo2ConstraintAnimation[2] = (30/667) * kScreenHeight
        animator.addAnimation(aiLogo2ConstraintAnimation)
        
        let aiLogo2AlphaAnimation = AlphaAnimation(view: aiLogo2)
        aiLogo2AlphaAnimation[0] = 1
        aiLogo2AlphaAnimation[1] = 1
        aiLogo2AlphaAnimation[1.7] = 0
        animator.addAnimation(aiLogo2AlphaAnimation)
    }
    
    private func configurePage2Description() {
        let height = NSLayoutConstraint(item: page2Description, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (99/667))
        let bottom = NSLayoutConstraint(item: page2Description, attribute: .Bottom, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Bottom, multiplier: 1, constant: -(94/667) * kScreenHeight)
        NSLayoutConstraint.activateConstraints([height,bottom])
        keepView(page2Description, onPage: 1)
    }
    
    private func configureMemberA() {
        let height = NSLayoutConstraint(item: memberA, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (80/667))
        let top = NSLayoutConstraint(item: memberA, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activateConstraints([height,top])
        keepView(memberA, onPages: [0.7,2], atTimes: [0.7,2])
        
        let memberAAnimation = AlphaAnimation(view: memberA)
        memberAAnimation[0] = 0
        memberAAnimation[0.7] = 1
        memberAAnimation[2] = 0
        animator.addAnimation(memberAAnimation)
        
        let memberAConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        memberAConstraintAnimation[1] = (135/667) * kScreenHeight
        memberAConstraintAnimation[1.5] = (50/667) * kScreenHeight
        animator.addAnimation(memberAConstraintAnimation)
        
        let memberAScaleAnimation = ScaleAnimation(view: memberA)
        memberAScaleAnimation[1] = 1
        memberAScaleAnimation[1.5] = 0.8
        animator.addAnimation(memberAScaleAnimation)
    }
    
    private func configureMemberB() {
        let height = NSLayoutConstraint(item: memberB, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (80/667))
        let top = NSLayoutConstraint(item: memberB, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        NSLayoutConstraint.activateConstraints([height,top])
        keepView(memberB, onPages: [0.9, 0.7, 2], atTimes: [0.5, 0.7, 2])
        
        let MemberBAnimation = AlphaAnimation(view: memberB)
        MemberBAnimation[0] = 0
        MemberBAnimation[0.7] = 1
        MemberBAnimation[2] = 0
        animator.addAnimation(MemberBAnimation)
        
        let memberBConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        memberBConstraintAnimation[1] = (233/667) * kScreenHeight
        memberBConstraintAnimation[1.5] = (50/667) * kScreenHeight
        animator.addAnimation(memberBConstraintAnimation)
        
        let memberBScaleAnimation = ScaleAnimation(view: memberB)
        memberBScaleAnimation[1] = 1
        memberBScaleAnimation[1.5] = 0.8
        animator.addAnimation(memberBScaleAnimation)
    }
    
    private func configureMemberC() {
        let height = NSLayoutConstraint(item: memberC, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (80/667))
        let top = NSLayoutConstraint(item: memberC, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: (331/667) * kScreenHeight)
        NSLayoutConstraint.activateConstraints([height,top])
        keepView(memberC, onPages: [1.1, 0.7, 2], atTimes: [0.5, 0.7, 2])
        
        let memberCAnimation = AlphaAnimation(view: memberC)
        memberCAnimation[0] = 0
        memberCAnimation[0.7] = 1
        memberCAnimation[2] = 0
        animator.addAnimation(memberCAnimation)
        
        let memberCConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        memberCConstraintAnimation[1] = (331/667) * kScreenHeight
        memberCConstraintAnimation[1.5] = (50/667) * kScreenHeight
        animator.addAnimation(memberCConstraintAnimation)
        
        let memberCScaleAnimation = ScaleAnimation(view: memberC)
        memberCScaleAnimation[1] = 1
        memberCScaleAnimation[1.5] = 0.8
        animator.addAnimation(memberCScaleAnimation)
    }
    
    private func configureAddMembers() {
        let top = NSLayoutConstraint(item: addMember, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight * (41/667))
        let height = NSLayoutConstraint(item: addMember, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (394/667))
        NSLayoutConstraint.activateConstraints([top,height])
        keepView(addMember, onPages: [0,1,2])
        let addMemberAnimation = AlphaAnimation(view: addMember)
        addMemberAnimation[0] = 0
        addMemberAnimation[1] = 1
        addMemberAnimation[2] = 0
        animator.addAnimation(addMemberAnimation)
    }
    
    private func configureCheckmarkA() {
        let height = NSLayoutConstraint(item: checkmarkA, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (11/667))
        let top = NSLayoutConstraint(item: checkmarkA, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight * (170/667))
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
        checkmarkAConstraintAnimation[1] = (170/667) * kScreenHeight
        checkmarkAConstraintAnimation[1.5] = (85/667) * kScreenHeight
        animator.addAnimation(checkmarkAConstraintAnimation)
    }
    
    private func configureCheckmarkB() {
        let height = NSLayoutConstraint(item: checkmarkB, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (11/667))
        let top = NSLayoutConstraint(item: checkmarkB, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight * (268/667))
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
        checkmarkBConstraintAnimation[1] = (268/667) * kScreenHeight
        checkmarkBConstraintAnimation[1.5] = (85/667) * kScreenHeight
        animator.addAnimation(checkmarkBConstraintAnimation)
    }
    
    private func configureCheckmarkC() {
        let height = NSLayoutConstraint(item: checkmarkC, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (11/667))
        let top = NSLayoutConstraint(item: checkmarkC, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight * (366/667))
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
        checkmarkCConstraintAnimation[1] = (366/667) * kScreenHeight
        checkmarkCConstraintAnimation[1.5] = (85/667) * kScreenHeight
        animator.addAnimation(checkmarkCConstraintAnimation)
    }
    
    private func configureInviteButton() {
        let height = NSLayoutConstraint(item: inviteButton, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (29/667))
        let top = NSLayoutConstraint(item: inviteButton, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight * (66/667))
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
        let top = NSLayoutConstraint(item: projectPage, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight * (31/667))
        let height = NSLayoutConstraint(item: projectPage, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (422/667))
        NSLayoutConstraint.activateConstraints([top,height])
        keepView(projectPage, onPages: [1,2])
        let projectPageAnimation = AlphaAnimation(view: projectPage)
        projectPageAnimation[1] = 0
        projectPageAnimation[2] = 1
        animator.addAnimation(projectPageAnimation)
    }
    
    private func configureProjectItems() {
        let top = NSLayoutConstraint(item: projectItems, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Top, multiplier: 1, constant: kScreenHeight)
        let height = NSLayoutConstraint(item: projectItems, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (344/667))
        NSLayoutConstraint.activateConstraints([top,height])
        
        keepView(projectItems, onPages: [1,2])
        
        let projectItemsAlphaAnimation = AlphaAnimation(view: projectItems)
        projectItemsAlphaAnimation[1.6] = 0
        projectItemsAlphaAnimation[1.7] = 0.8
        projectItemsAlphaAnimation[2] = 1
        animator.addAnimation(projectItemsAlphaAnimation)
        
        let projectItemsConstraintAnimation = ConstraintConstantAnimation(superview: scrollView, constraint: top)
        projectItemsConstraintAnimation[1.6] = kScreenHeight * (200/667)
        projectItemsConstraintAnimation[1.8] = kScreenHeight * (109/667)
        projectItemsConstraintAnimation[1.9] = kScreenHeight * (105/667)
        projectItemsConstraintAnimation[2] = kScreenHeight * (109/667)
        animator.addAnimation(projectItemsConstraintAnimation)
    }

    private func configureEnterButton() {
        let height = NSLayoutConstraint(item: enterButton, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (50/667))
        let bottom = NSLayoutConstraint(item: enterButton, attribute: .Bottom, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Bottom, multiplier: 1, constant: -(105/667) * kScreenHeight)
        NSLayoutConstraint.activateConstraints([height,bottom])
        keepView(enterButton, onPage: 2)
    }
    
    //page control
    private func configureIndicators1() {
        let height = NSLayoutConstraint(item: indicators1, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (12/667))
        let bottom = NSLayoutConstraint(item: indicators1, attribute: .Bottom, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Bottom, multiplier: 1, constant: -(30/667) * kScreenHeight)
        NSLayoutConstraint.activateConstraints([height,bottom])
        keepView(indicators1, onPages: [-1,0,1,2])
        
        let indicators1AlphaAnimation = AlphaAnimation(view: indicators1)
        indicators1AlphaAnimation[0] = 1
        indicators1AlphaAnimation[1] = 0
        indicators1AlphaAnimation[2] = 0
        animator.addAnimation(indicators1AlphaAnimation)
    }

    private func configureIndicators2() {
        let height = NSLayoutConstraint(item: indicators2, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (12/667))
        let bottom = NSLayoutConstraint(item: indicators2, attribute: .Bottom, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Bottom, multiplier: 1, constant: -(30/667) * kScreenHeight)
        NSLayoutConstraint.activateConstraints([height,bottom])
        keepView(indicators2, onPages: [0,1,2])
        
        let indicators2AlphaAnimation = AlphaAnimation(view: indicators2)
        indicators2AlphaAnimation[0] = 0
        indicators2AlphaAnimation[1] = 1
        indicators2AlphaAnimation[2] = 0
        animator.addAnimation(indicators2AlphaAnimation)
    }
    
    private func configureIndicators3() {
        let height = NSLayoutConstraint(item: indicators3, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Height, multiplier: 1, constant: kScreenHeight * (12/667))
        let bottom = NSLayoutConstraint(item: indicators3, attribute: .Bottom, relatedBy: .GreaterThanOrEqual, toItem: scrollView, attribute: .Bottom, multiplier: 1, constant: -(30/667) * kScreenHeight)
        NSLayoutConstraint.activateConstraints([height,bottom])
        keepView(indicators3, onPages: [0,1,2,3])
        
        let indicators3AlphaAnimation = AlphaAnimation(view: indicators3)
        indicators3AlphaAnimation[0] = 0
        indicators3AlphaAnimation[1] = 0
        indicators3AlphaAnimation[2] = 1
        animator.addAnimation(indicators3AlphaAnimation)
    }
}


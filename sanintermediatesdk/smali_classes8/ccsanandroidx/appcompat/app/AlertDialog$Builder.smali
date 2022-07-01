.class public Lccsanandroidx/appcompat/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 313
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lccsanandroidx/appcompat/app/AlertDialog;->resolveDialogTheme(Lccsanandroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;-><init>(Lccsanandroid/content/Context;I)V

    .line 314
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "themeResId"    # I

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    new-instance v1, Lccsanandroid/view/ContextThemeWrapper;

    .line 344
    invoke-static {p1, p2}, Lccsanandroidx/appcompat/app/AlertDialog;->resolveDialogTheme(Lccsanandroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Lccsanandroid/view/ContextThemeWrapper;-><init>(Lccsanandroid/content/Context;I)V

    invoke-direct {v0, v1}, Lccsanandroidx/appcompat/app/AlertController$AlertParams;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    .line 345
    iput p2, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->mTheme:I

    .line 346
    return-void
.end method


# virtual methods
.method public create()Lccsanandroidx/appcompat/app/AlertDialog;
    .locals 3

    .line 983
    new-instance v0, Lccsanandroidx/appcompat/app/AlertDialog;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mContext:Lccsanandroid/content/Context;

    iget v2, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->mTheme:I

    invoke-direct {v0, v1, v2}, Lccsanandroidx/appcompat/app/AlertDialog;-><init>(Lccsanandroid/content/Context;I)V

    .line 984
    .local v0, "dialog":Lccsanandroidx/appcompat/app/AlertDialog;
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v2, v0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    invoke-virtual {v1, v2}, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->apply(Lccsanandroidx/appcompat/app/AlertController;)V

    .line 985
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 986
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 987
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 989
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Lccsanandroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/app/AlertDialog;->setOnCancelListener(Lccsanandroid/content/DialogInterface$OnCancelListener;)V

    .line 990
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Lccsanandroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/app/AlertDialog;->setOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)V

    .line 991
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Lccsanandroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 992
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Lccsanandroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/app/AlertDialog;->setOnKeyListener(Lccsanandroid/content/DialogInterface$OnKeyListener;)V

    .line 994
    :cond_1
    return-object v0
.end method

.method public getContext()Lccsanandroid/content/Context;
    .locals 1

    .line 358
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mContext:Lccsanandroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Lccsanandroid/widget/ListAdapter;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Lccsanandroid/widget/ListAdapter;
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 659
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Lccsanandroid/widget/ListAdapter;

    .line 660
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 661
    return-object p0
.end method

.method public setCancelable(Z)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .line 579
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 580
    return-object p0
.end method

.method public setCursor(Lccsanandroid/database/Cursor;Lccsanandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Lccsanandroid/database/Cursor;
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .line 678
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mCursor:Lccsanandroid/database/Cursor;

    .line 679
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p3, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 680
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 681
    return-object p0
.end method

.method public setCustomTitle(Lccsanandroid/view/View;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Lccsanandroid/view/View;

    .line 398
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Lccsanandroid/view/View;

    .line 399
    return-object p0
.end method

.method public setIcon(I)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .line 430
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 431
    return-object p0
.end method

.method public setIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 445
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 446
    return-object p0
.end method

.method public setIconAttribute(I)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 3
    .param p1, "attrId"    # I

    .line 459
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 460
    .local v0, "out":Lccsanandroid/util/TypedValue;
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    .line 461
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget v2, v0, Lccsanandroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 462
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 957
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 958
    return-object p0
.end method

.method public setItems(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 631
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsanandroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 632
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 633
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 643
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 644
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 645
    return-object p0
.end method

.method public setMessage(I)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .line 408
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1, p1}, Lccsanandroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 409
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 418
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 419
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Lccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 704
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsanandroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 705
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p3, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Lccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 706
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 707
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 708
    return-object p0
.end method

.method public setMultiChoiceItems(Lccsanandroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Lccsanandroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Lccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 758
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mCursor:Lccsanandroid/database/Cursor;

    .line 759
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p4, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Lccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 760
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 761
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p3, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 762
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 763
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Lccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 730
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 731
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p3, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Lccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 732
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 733
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 734
    return-object p0
.end method

.method public setNegativeButton(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 509
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1, p1}, Lccsanandroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 510
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 511
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 522
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 523
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 524
    return-object p0
.end method

.method public setNegativeButtonIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 533
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 534
    return-object p0
.end method

.method public setNeutralButton(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 545
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1, p1}, Lccsanandroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 546
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 547
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 558
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 559
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 560
    return-object p0
.end method

.method public setNeutralButtonIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 569
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 570
    return-object p0
.end method

.method public setOnCancelListener(Lccsanandroid/content/DialogInterface$OnCancelListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Lccsanandroid/content/DialogInterface$OnCancelListener;

    .line 600
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Lccsanandroid/content/DialogInterface$OnCancelListener;

    .line 601
    return-object p0
.end method

.method public setOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Lccsanandroid/content/DialogInterface$OnDismissListener;

    .line 610
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Lccsanandroid/content/DialogInterface$OnDismissListener;

    .line 611
    return-object p0
.end method

.method public setOnItemSelectedListener(Lccsanandroid/widget/AdapterView$OnItemSelectedListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Lccsanandroid/widget/AdapterView$OnItemSelectedListener;

    .line 868
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnItemSelectedListener:Lccsanandroid/widget/AdapterView$OnItemSelectedListener;

    .line 869
    return-object p0
.end method

.method public setOnKeyListener(Lccsanandroid/content/DialogInterface$OnKeyListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Lccsanandroid/content/DialogInterface$OnKeyListener;

    .line 620
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Lccsanandroid/content/DialogInterface$OnKeyListener;

    .line 621
    return-object p0
.end method

.method public setPositiveButton(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 473
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1, p1}, Lccsanandroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 474
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 475
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 486
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 487
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 488
    return-object p0
.end method

.method public setPositiveButtonIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 497
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 498
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .line 966
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 967
    return-object p0
.end method

.method public setSingleChoiceItems(IILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 783
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsanandroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 784
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p3, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 785
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 786
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 787
    return-object p0
.end method

.method public setSingleChoiceItems(Lccsanandroid/database/Cursor;ILjava/lang/String;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Lccsanandroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 808
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mCursor:Lccsanandroid/database/Cursor;

    .line 809
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p4, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 810
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 811
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p3, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 812
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 813
    return-object p0
.end method

.method public setSingleChoiceItems(Lccsanandroid/widget/ListAdapter;ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Lccsanandroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 853
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Lccsanandroid/widget/ListAdapter;

    .line 854
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p3, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 855
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 856
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 857
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 831
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 832
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p3, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 833
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 834
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 835
    return-object p0
.end method

.method public setTitle(I)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .line 367
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1, p1}, Lccsanandroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 368
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 377
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 378
    return-object p0
.end method

.method public setView(I)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 2
    .param p1, "layoutResId"    # I

    .line 881
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mView:Lccsanandroid/view/View;

    .line 882
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 883
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 884
    return-object p0
.end method

.method public setView(Lccsanandroid/view/View;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 902
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mView:Lccsanandroid/view/View;

    .line 903
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 904
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-boolean v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 905
    return-object p0
.end method

.method public setView(Lccsanandroid/view/View;IIII)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 935
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mView:Lccsanandroid/view/View;

    .line 936
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 937
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 938
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput p2, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 939
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput p3, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 940
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput p4, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 941
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->P:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput p5, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 942
    return-object p0
.end method

.method public show()Lccsanandroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->create()Lccsanandroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1009
    .local v0, "dialog":Lccsanandroidx/appcompat/app/AlertDialog;
    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AlertDialog;->show()V

    .line 1010
    return-object v0
.end method

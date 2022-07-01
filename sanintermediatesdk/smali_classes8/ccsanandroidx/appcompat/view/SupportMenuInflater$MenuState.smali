.class Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field itemActionProvider:Lccsanandroidx/core/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticModifiers:I

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemContentDescription:Ljava/lang/CharSequence;

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemIconTintList:Lccsanandroid/content/res/ColorStateList;

.field private itemIconTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericModifiers:I

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemTooltipText:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Lccsanandroid/view/Menu;

.field final synthetic this$0:Lccsanandroidx/appcompat/view/SupportMenuInflater;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/view/SupportMenuInflater;Lccsanandroid/view/Menu;)V
    .locals 0
    .param p2, "menu"    # Lccsanandroid/view/Menu;

    .line 349
    iput-object p1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Lccsanandroidx/appcompat/view/SupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 p1, 0x0

    iput-object p1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Lccsanandroid/content/res/ColorStateList;

    .line 338
    iput-object p1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 350
    iput-object p2, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->menu:Lccsanandroid/view/Menu;

    .line 352
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->resetGroup()V

    .line 353
    return-void
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 1
    .param p1, "shortcutString"    # Ljava/lang/String;

    .line 459
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 460
    return v0

    .line 462
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 549
    .local p2, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Lccsanandroidx/appcompat/view/SupportMenuInflater;

    iget-object v1, v1, Lccsanandroidx/appcompat/view/SupportMenuInflater;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 550
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 551
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 552
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 553
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot instantiate class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SupportMenuInflater"

    invoke-static {v2, v1, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private setItem(Lccsanandroid/view/MenuItem;)V
    .locals 4
    .param p1, "item"    # Lccsanandroid/view/MenuItem;

    .line 467
    iget-boolean v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v0}, Lccsanandroid/view/MenuItem;->setChecked(Z)Lccsanandroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 468
    invoke-interface {v0, v1}, Lccsanandroid/view/MenuItem;->setVisible(Z)Lccsanandroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 469
    invoke-interface {v0, v1}, Lccsanandroid/view/MenuItem;->setEnabled(Z)Lccsanandroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 470
    :goto_0
    invoke-interface {v0, v1}, Lccsanandroid/view/MenuItem;->setCheckable(Z)Lccsanandroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 471
    invoke-interface {v0, v1}, Lccsanandroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Lccsanandroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 472
    invoke-interface {v0, v1}, Lccsanandroid/view/MenuItem;->setIcon(I)Lccsanandroid/view/MenuItem;

    .line 474
    iget v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v0, :cond_1

    .line 475
    invoke-interface {p1, v0}, Lccsanandroid/view/MenuItem;->setShowAsAction(I)V

    .line 478
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Lccsanandroidx/appcompat/view/SupportMenuInflater;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/SupportMenuInflater;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 483
    new-instance v0, Lccsanandroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Lccsanandroidx/appcompat/view/SupportMenuInflater;

    .line 484
    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/SupportMenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lccsanandroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-interface {p1, v0}, Lccsanandroid/view/MenuItem;->setOnMenuItemClickListener(Lccsanandroid/view/MenuItem$OnMenuItemClickListener;)Lccsanandroid/view/MenuItem;

    goto :goto_1

    .line 480
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_3
    :goto_1
    iget v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    .line 488
    instance-of v0, p1, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_4

    .line 489
    move-object v0, p1

    check-cast v0, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, v2}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    goto :goto_2

    .line 490
    :cond_4
    instance-of v0, p1, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;

    if-eqz v0, :cond_5

    .line 491
    move-object v0, p1

    check-cast v0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;

    invoke-virtual {v0, v2}, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    .line 495
    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 496
    .local v0, "actionViewSpecified":Z
    iget-object v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 497
    sget-object v2, Lccsanandroidx/appcompat/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v3, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Lccsanandroidx/appcompat/view/SupportMenuInflater;

    iget-object v3, v3, Lccsanandroidx/appcompat/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v1, v2, v3}, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 499
    .local v1, "actionView":Lccsanandroid/view/View;
    invoke-interface {p1, v1}, Lccsanandroid/view/MenuItem;->setActionView(Lccsanandroid/view/View;)Lccsanandroid/view/MenuItem;

    .line 500
    const/4 v0, 0x1

    .line 502
    .end local v1    # "actionView":Lccsanandroid/view/View;
    :cond_6
    iget v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v1, :cond_8

    .line 503
    if-nez v0, :cond_7

    .line 504
    invoke-interface {p1, v1}, Lccsanandroid/view/MenuItem;->setActionView(I)Lccsanandroid/view/MenuItem;

    .line 505
    const/4 v0, 0x1

    goto :goto_3

    .line 507
    :cond_7
    const-string v1, "SupportMenuInflater"

    const-string v2, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_8
    :goto_3
    iget-object v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Lccsanandroidx/core/view/ActionProvider;

    if-eqz v1, :cond_9

    .line 512
    invoke-static {p1, v1}, Lccsanandroidx/core/view/MenuItemCompat;->setActionProvider(Lccsanandroid/view/MenuItem;Lccsanandroidx/core/view/ActionProvider;)Lccsanandroid/view/MenuItem;

    .line 515
    :cond_9
    iget-object v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lccsanandroidx/core/view/MenuItemCompat;->setContentDescription(Lccsanandroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 516
    iget-object v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lccsanandroidx/core/view/MenuItemCompat;->setTooltipText(Lccsanandroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 517
    iget-char v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    iget v2, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    invoke-static {p1, v1, v2}, Lccsanandroidx/core/view/MenuItemCompat;->setAlphabeticShortcut(Lccsanandroid/view/MenuItem;CI)V

    .line 519
    iget-char v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    iget v2, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    invoke-static {p1, v1, v2}, Lccsanandroidx/core/view/MenuItemCompat;->setNumericShortcut(Lccsanandroid/view/MenuItem;CI)V

    .line 521
    iget-object v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_a

    .line 522
    invoke-static {p1, v1}, Lccsanandroidx/core/view/MenuItemCompat;->setIconTintMode(Lccsanandroid/view/MenuItem;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 524
    :cond_a
    iget-object v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Lccsanandroid/content/res/ColorStateList;

    if-eqz v1, :cond_b

    .line 525
    invoke-static {p1, v1}, Lccsanandroidx/core/view/MenuItemCompat;->setIconTintList(Lccsanandroid/view/MenuItem;Lccsanandroid/content/res/ColorStateList;)V

    .line 527
    :cond_b
    return-void
.end method


# virtual methods
.method public addItem()V
    .locals 5

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 531
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->menu:Lccsanandroid/view/Menu;

    iget v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Lccsanandroid/view/Menu;->add(IIILjava/lang/CharSequence;)Lccsanandroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->setItem(Lccsanandroid/view/MenuItem;)V

    .line 532
    return-void
.end method

.method public addSubMenuItem()Lccsanandroid/view/SubMenu;
    .locals 5

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 536
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->menu:Lccsanandroid/view/Menu;

    iget v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Lccsanandroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Lccsanandroid/view/SubMenu;

    move-result-object v0

    .line 537
    .local v0, "subMenu":Lccsanandroid/view/SubMenu;
    invoke-interface {v0}, Lccsanandroid/view/SubMenu;->getItem()Lccsanandroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->setItem(Lccsanandroid/view/MenuItem;)V

    .line 538
    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public readGroup(Lccsanandroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 368
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Lccsanandroidx/appcompat/view/SupportMenuInflater;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/SupportMenuInflater;->mContext:Lccsanandroid/content/Context;

    sget-object v1, Lccsanandroidx/appcompat/R$styleable;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 370
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    sget v1, Lccsanandroidx/appcompat/R$styleable;->MenuGroup_android_id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    .line 371
    sget v1, Lccsanandroidx/appcompat/R$styleable;->MenuGroup_android_menuCategory:I

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 373
    sget v1, Lccsanandroidx/appcompat/R$styleable;->MenuGroup_android_orderInCategory:I

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 374
    sget v1, Lccsanandroidx/appcompat/R$styleable;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 376
    sget v1, Lccsanandroidx/appcompat/R$styleable;->MenuGroup_android_visible:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 377
    sget v1, Lccsanandroidx/appcompat/R$styleable;->MenuGroup_android_enabled:I

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 379
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 380
    return-void
.end method

.method public readItem(Lccsanandroid/util/AttributeSet;)V
    .locals 10
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 386
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Lccsanandroidx/appcompat/view/SupportMenuInflater;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/SupportMenuInflater;->mContext:Lccsanandroid/content/Context;

    sget-object v1, Lccsanandroidx/appcompat/R$styleable;->MenuItem:[I

    invoke-static {v0, p1, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[I)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 390
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    sget v1, Lccsanandroidx/appcompat/R$styleable;->MenuItem_android_id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    .line 391
    sget v1, Lccsanandroidx/appcompat/R$styleable;->MenuItem_android_menuCategory:I

    iget v3, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    invoke-virtual {v0, v1, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    .line 392
    .local v1, "category":I
    sget v3, Lccsanandroidx/appcompat/R$styleable;->MenuItem_android_orderInCategory:I

    iget v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    invoke-virtual {v0, v3, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v3

    .line 393
    .local v3, "order":I
    const/high16 v4, -0x10000

    and-int/2addr v4, v1

    const v5, 0xffff

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    iput v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 395
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_android_title:I

    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 396
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_android_titleCondensed:I

    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 397
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_android_icon:I

    invoke-virtual {v0, v4, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 398
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_android_alphabeticShortcut:I

    .line 399
    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 400
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_alphabeticModifiers:I

    .line 401
    const/16 v5, 0x1000

    invoke-virtual {v0, v4, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    .line 402
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_android_numericShortcut:I

    .line 403
    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 404
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_numericModifiers:I

    .line 405
    invoke-virtual {v0, v4, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    .line 406
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 408
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {v0, v4, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v4

    iput v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    goto :goto_0

    .line 412
    :cond_0
    iget v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    iput v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 414
    :goto_0
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_android_checked:I

    invoke-virtual {v0, v4, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemChecked:Z

    .line 415
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_android_visible:I

    iget-boolean v5, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v4, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 416
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_android_enabled:I

    iget-boolean v5, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v0, v4, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 417
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_showAsAction:I

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    .line 418
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_android_onClick:I

    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 419
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_actionLayout:I

    invoke-virtual {v0, v4, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 420
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_actionViewClass:I

    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 421
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_actionProviderClass:I

    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 423
    if-eqz v4, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 424
    .local v6, "hasActionProvider":Z
    :goto_1
    const/4 v7, 0x0

    if-eqz v6, :cond_2

    iget v8, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v8, :cond_2

    iget-object v8, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 425
    sget-object v8, Lccsanandroidx/appcompat/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v9, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Lccsanandroidx/appcompat/view/SupportMenuInflater;

    iget-object v9, v9, Lccsanandroidx/appcompat/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v4, v8, v9}, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroidx/core/view/ActionProvider;

    iput-object v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Lccsanandroidx/core/view/ActionProvider;

    goto :goto_2

    .line 429
    :cond_2
    if-eqz v6, :cond_3

    .line 430
    const-string v4, "SupportMenuInflater"

    const-string v8, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v4, v8}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_3
    iput-object v7, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Lccsanandroidx/core/view/ActionProvider;

    .line 436
    :goto_2
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_contentDescription:I

    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    .line 437
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_tooltipText:I

    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    .line 438
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_iconTintMode:I

    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 439
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_iconTintMode:I

    invoke-virtual {v0, v4, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    iget-object v5, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-static {v4, v5}, Lccsanandroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 444
    :cond_4
    iput-object v7, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 446
    :goto_3
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_iconTint:I

    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 447
    sget v4, Lccsanandroidx/appcompat/R$styleable;->MenuItem_iconTint:I

    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Lccsanandroid/content/res/ColorStateList;

    goto :goto_4

    .line 450
    :cond_5
    iput-object v7, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Lccsanandroid/content/res/ColorStateList;

    .line 453
    :goto_4
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 455
    iput-boolean v2, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 456
    return-void
.end method

.method public resetGroup()V
    .locals 1

    .line 356
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    .line 357
    iput v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 358
    iput v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 359
    iput v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 361
    iput-boolean v0, p0, Lccsanandroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 362
    return-void
.end method

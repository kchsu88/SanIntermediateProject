.class public Lccsanandroidx/fragment/app/FragmentTabHost;
.super Lccsanandroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Lccsanandroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/fragment/app/FragmentTabHost$SavedState;,
        Lccsanandroidx/fragment/app/FragmentTabHost$DummyTabFactory;,
        Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Lccsanandroid/content/Context;

.field private mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

.field private mLastTab:Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Lccsanandroid/widget/TabHost$OnTabChangeListener;

.field private mRealTabContent:Lccsanandroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroid/widget/TabHost;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 138
    invoke-direct {p0, p1, v0}, Lccsanandroidx/fragment/app/FragmentTabHost;->initFragmentTabHost(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/TabHost;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 149
    invoke-direct {p0, p1, p2}, Lccsanandroidx/fragment/app/FragmentTabHost;->initFragmentTabHost(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Lccsanandroidx/fragment/app/FragmentTransaction;)Lccsanandroidx/fragment/app/FragmentTransaction;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ft"    # Lccsanandroidx/fragment/app/FragmentTransaction;

    .line 402
    invoke-direct {p0, p1}, Lccsanandroidx/fragment/app/FragmentTabHost;->getTabInfoForTag(Ljava/lang/String;)Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;

    move-result-object v0

    .line 403
    .local v0, "newTab":Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mLastTab:Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;

    if-eq v1, v0, :cond_4

    .line 404
    if-nez p2, :cond_0

    .line 405
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentManager;->beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 408
    :cond_0
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mLastTab:Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, v1, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Lccsanandroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 410
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mLastTab:Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;

    iget-object v1, v1, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {p2, v1}, Lccsanandroidx/fragment/app/FragmentTransaction;->detach(Lccsanandroidx/fragment/app/Fragment;)Lccsanandroidx/fragment/app/FragmentTransaction;

    .line 414
    :cond_1
    if-eqz v0, :cond_3

    .line 415
    iget-object v1, v0, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Lccsanandroidx/fragment/app/Fragment;

    if-nez v1, :cond_2

    .line 416
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentManager;->getFragmentFactory()Lccsanandroidx/fragment/app/FragmentFactory;

    move-result-object v1

    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mContext:Lccsanandroid/content/Context;

    .line 417
    invoke-virtual {v2}, Lccsanandroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, v0, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-virtual {v1, v2, v3}, Lccsanandroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Lccsanandroidx/fragment/app/Fragment;

    .line 418
    iget-object v1, v0, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Lccsanandroidx/fragment/app/Fragment;

    iget-object v2, v0, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->args:Lccsanandroid/os/Bundle;

    invoke-virtual {v1, v2}, Lccsanandroidx/fragment/app/Fragment;->setArguments(Lccsanandroid/os/Bundle;)V

    .line 419
    iget v1, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mContainerId:I

    iget-object v2, v0, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Lccsanandroidx/fragment/app/Fragment;

    iget-object v3, v0, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Lccsanandroidx/fragment/app/FragmentTransaction;->add(ILccsanandroidx/fragment/app/Fragment;Ljava/lang/String;)Lccsanandroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 421
    :cond_2
    iget-object v1, v0, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {p2, v1}, Lccsanandroidx/fragment/app/FragmentTransaction;->attach(Lccsanandroidx/fragment/app/Fragment;)Lccsanandroidx/fragment/app/FragmentTransaction;

    .line 425
    :cond_3
    :goto_0
    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mLastTab:Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;

    .line 428
    :cond_4
    return-object p2
.end method

.method private ensureContent()V
    .locals 3

    .line 242
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mRealTabContent:Lccsanandroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 243
    iget v0, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentTabHost;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/FrameLayout;

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mRealTabContent:Lccsanandroid/widget/FrameLayout;

    .line 244
    if-eqz v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab content FrameLayout found for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    :goto_0
    return-void
.end method

.method private ensureHierarchy(Lccsanandroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 164
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentTabHost;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 165
    new-instance v1, Lccsanandroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 166
    .local v1, "ll":Lccsanandroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsanandroid/widget/LinearLayout;->setOrientation(I)V

    .line 167
    new-instance v2, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/fragment/app/FragmentTabHost;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v2, Lccsanandroid/widget/TabWidget;

    invoke-direct {v2, p1}, Lccsanandroid/widget/TabWidget;-><init>(Lccsanandroid/content/Context;)V

    .line 172
    .local v2, "tw":Lccsanandroid/widget/TabWidget;
    invoke-virtual {v2, v0}, Lccsanandroid/widget/TabWidget;->setId(I)V

    .line 173
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lccsanandroid/widget/TabWidget;->setOrientation(I)V

    .line 174
    new-instance v4, Lccsanandroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 178
    new-instance v4, Lccsanandroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 179
    .local v4, "fl":Lccsanandroid/widget/FrameLayout;
    const v5, 0x1020011

    invoke-virtual {v4, v5}, Lccsanandroid/widget/FrameLayout;->setId(I)V

    .line 180
    new-instance v5, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0, v6}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 182
    new-instance v5, Lccsanandroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    move-object v4, v5

    iput-object v5, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mRealTabContent:Lccsanandroid/widget/FrameLayout;

    .line 183
    iget v6, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v5, v6}, Lccsanandroid/widget/FrameLayout;->setId(I)V

    .line 184
    new-instance v5, Lccsanandroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v0, v6}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .end local v1    # "ll":Lccsanandroid/widget/LinearLayout;
    .end local v2    # "tw":Lccsanandroid/widget/TabWidget;
    .end local v4    # "fl":Lccsanandroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method private getTabInfoForTag(Ljava/lang/String;)Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .line 433
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 434
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;

    .line 435
    .local v2, "tab":Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;
    iget-object v3, v2, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    return-object v2

    .line 433
    .end local v2    # "tab":Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private initFragmentTabHost(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 153
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100f3

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0, v2, v2}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 155
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mContainerId:I

    .line 156
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 158
    invoke-super {p0, p0}, Lccsanandroid/widget/TabHost;->setOnTabChangedListener(Lccsanandroid/widget/TabHost$OnTabChangeListener;)V

    .line 159
    return-void
.end method


# virtual methods
.method public addTab(Lccsanandroid/widget/TabHost$TabSpec;Ljava/lang/Class;Lccsanandroid/os/Bundle;)V
    .locals 4
    .param p1, "tabSpec"    # Lccsanandroid/widget/TabHost$TabSpec;
    .param p3, "args"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class<",
            "*>;",
            "Lccsanandroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lccsanandroidx/fragment/app/FragmentTabHost$DummyTabFactory;

    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v0, v1}, Lccsanandroidx/fragment/app/FragmentTabHost$DummyTabFactory;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TabHost$TabSpec;->setContent(Lccsanandroid/widget/TabHost$TabContentFactory;)Lccsanandroid/widget/TabHost$TabSpec;

    .line 272
    invoke-virtual {p1}, Lccsanandroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "tag":Ljava/lang/String;
    new-instance v1, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;

    invoke-direct {v1, v0, p2, p3}, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lccsanandroid/os/Bundle;)V

    .line 275
    .local v1, "info":Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;
    iget-boolean v2, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mAttached:Z

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v0}, Lccsanandroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;

    move-result-object v2

    iput-object v2, v1, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Lccsanandroidx/fragment/app/Fragment;

    .line 280
    iget-object v2, v1, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Lccsanandroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Lccsanandroidx/fragment/app/Fragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Lccsanandroidx/fragment/app/FragmentManager;->beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 282
    .local v2, "ft":Lccsanandroidx/fragment/app/FragmentTransaction;
    iget-object v3, v1, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3}, Lccsanandroidx/fragment/app/FragmentTransaction;->detach(Lccsanandroidx/fragment/app/Fragment;)Lccsanandroidx/fragment/app/FragmentTransaction;

    .line 283
    invoke-virtual {v2}, Lccsanandroidx/fragment/app/FragmentTransaction;->commit()I

    .line 287
    .end local v2    # "ft":Lccsanandroidx/fragment/app/FragmentTransaction;
    :cond_0
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/FragmentTabHost;->addTab(Lccsanandroid/widget/TabHost$TabSpec;)V

    .line 289
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    invoke-super {p0}, Lccsanandroid/widget/TabHost;->onAttachedToWindow()V

    .line 301
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "currentTag":Ljava/lang/String;
    const/4 v1, 0x0

    .line 306
    .local v1, "ft":Lccsanandroidx/fragment/app/FragmentTransaction;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 307
    iget-object v4, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;

    .line 308
    .local v4, "tab":Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;
    iget-object v5, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    iget-object v6, v4, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lccsanandroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;

    move-result-object v5

    iput-object v5, v4, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Lccsanandroidx/fragment/app/Fragment;

    .line 309
    iget-object v5, v4, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Lccsanandroidx/fragment/app/Fragment;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Lccsanandroidx/fragment/app/Fragment;->isDetached()Z

    move-result v5

    if-nez v5, :cond_2

    .line 310
    iget-object v5, v4, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    iput-object v4, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mLastTab:Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;

    goto :goto_1

    .line 318
    :cond_0
    if-nez v1, :cond_1

    .line 319
    iget-object v5, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v5}, Lccsanandroidx/fragment/app/FragmentManager;->beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 321
    :cond_1
    iget-object v5, v4, Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v1, v5}, Lccsanandroidx/fragment/app/FragmentTransaction;->detach(Lccsanandroidx/fragment/app/Fragment;)Lccsanandroidx/fragment/app/FragmentTransaction;

    .line 306
    .end local v4    # "tab":Lccsanandroidx/fragment/app/FragmentTabHost$TabInfo;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mAttached:Z

    .line 329
    invoke-direct {p0, v0, v1}, Lccsanandroidx/fragment/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Lccsanandroidx/fragment/app/FragmentTransaction;)Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_4

    .line 331
    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentTransaction;->commit()I

    .line 332
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Lccsanandroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 334
    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    invoke-super {p0}, Lccsanandroid/widget/TabHost;->onDetachedFromWindow()V

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mAttached:Z

    .line 346
    return-void
.end method

.method protected onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Lccsanandroid/os/Parcelable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 371
    instance-of v0, p1, Lccsanandroidx/fragment/app/FragmentTabHost$SavedState;

    if-nez v0, :cond_0

    .line 372
    invoke-super {p0, p1}, Lccsanandroid/widget/TabHost;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V

    .line 373
    return-void

    .line 375
    :cond_0
    move-object v0, p1

    check-cast v0, Lccsanandroidx/fragment/app/FragmentTabHost$SavedState;

    .line 376
    .local v0, "ss":Lccsanandroidx/fragment/app/FragmentTabHost$SavedState;
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentTabHost$SavedState;->getSuperState()Lccsanandroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lccsanandroid/widget/TabHost;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V

    .line 377
    iget-object v1, v0, Lccsanandroidx/fragment/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lccsanandroidx/fragment/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method protected onSaveInstanceState()Lccsanandroid/os/Parcelable;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    invoke-super {p0}, Lccsanandroid/widget/TabHost;->onSaveInstanceState()Lccsanandroid/os/Parcelable;

    move-result-object v0

    .line 358
    .local v0, "superState":Lccsanandroid/os/Parcelable;
    new-instance v1, Lccsanandroidx/fragment/app/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Lccsanandroidx/fragment/app/FragmentTabHost$SavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 359
    .local v1, "ss":Lccsanandroidx/fragment/app/FragmentTabHost$SavedState;
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lccsanandroidx/fragment/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    .line 360
    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "tabId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 388
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mAttached:Z

    if-eqz v0, :cond_0

    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/fragment/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Lccsanandroidx/fragment/app/FragmentTransaction;)Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 390
    .local v0, "ft":Lccsanandroidx/fragment/app/FragmentTransaction;
    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentTransaction;->commit()I

    .line 394
    .end local v0    # "ft":Lccsanandroidx/fragment/app/FragmentTransaction;
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mOnTabChangeListener:Lccsanandroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_1

    .line 395
    invoke-interface {v0, p1}, Lccsanandroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 397
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Lccsanandroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Lccsanandroid/widget/TabHost$OnTabChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mOnTabChangeListener:Lccsanandroid/widget/TabHost$OnTabChangeListener;

    .line 260
    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setup(Lccsanandroid/content/Context;Lccsanandroidx/fragment/app/FragmentManager;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "manager"    # Lccsanandroidx/fragment/app/FragmentManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    invoke-direct {p0, p1}, Lccsanandroidx/fragment/app/FragmentTabHost;->ensureHierarchy(Lccsanandroid/content/Context;)V

    .line 210
    invoke-super {p0}, Lccsanandroid/widget/TabHost;->setup()V

    .line 211
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mContext:Lccsanandroid/content/Context;

    .line 212
    iput-object p2, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    .line 213
    invoke-direct {p0}, Lccsanandroidx/fragment/app/FragmentTabHost;->ensureContent()V

    .line 214
    return-void
.end method

.method public setup(Lccsanandroid/content/Context;Lccsanandroidx/fragment/app/FragmentManager;I)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "manager"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p3, "containerId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    invoke-direct {p0, p1}, Lccsanandroidx/fragment/app/FragmentTabHost;->ensureHierarchy(Lccsanandroid/content/Context;)V

    .line 227
    invoke-super {p0}, Lccsanandroid/widget/TabHost;->setup()V

    .line 228
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mContext:Lccsanandroid/content/Context;

    .line 229
    iput-object p2, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    .line 230
    iput p3, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mContainerId:I

    .line 231
    invoke-direct {p0}, Lccsanandroidx/fragment/app/FragmentTabHost;->ensureContent()V

    .line 232
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentTabHost;->mRealTabContent:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Lccsanandroid/widget/FrameLayout;->setId(I)V

    .line 236
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentTabHost;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 237
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentTabHost;->setId(I)V

    .line 239
    :cond_0
    return-void
.end method

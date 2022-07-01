.class public Lccsansan/cx/unifiedDownload;
.super Lccsanandroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cx/unifiedDownload$getDownloadingList;,
        Lccsansan/cx/unifiedDownload$unifiedDownload;,
        Lccsansan/cx/unifiedDownload$removeDownloadListener;
    }
.end annotation


# instance fields
.field private final IncentiveDownloadUtils:I

.field private addDownloadListener:Lccsansan/cx/unifiedDownload$removeDownloadListener;

.field private final deleteDownItem:I

.field private deleteDownList:Lccsansan/cx/unifiedDownload$getDownloadingList;

.field private final getDownloadStatusByUrl:Lccsanandroid/graphics/Rect;

.field private final getDownloadedCount:Lccsanandroid/graphics/Rect;

.field private getDownloadedList:Z

.field private final getDownloadedRecordByUrl:Lccsanandroid/graphics/Rect;

.field private getDownloadingCount:Z

.field private final getDownloadingList:I

.field private final getDownloadingRecordByUrl:I

.field private final pause:Lccsanandroid/graphics/Rect;

.field private removeDownloadListener:Lccsansan/cx/unifiedDownload$unifiedDownload;

.field private final unifiedDownload:Lccsanandroid/graphics/drawable/StateListDrawable;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lccsansan/cx/unifiedDownload;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Lccsanandroid/graphics/Rect;

    invoke-direct {p2}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lccsansan/cx/unifiedDownload;->getDownloadedRecordByUrl:Lccsanandroid/graphics/Rect;

    .line 4
    new-instance p2, Lccsanandroid/graphics/Rect;

    invoke-direct {p2}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lccsansan/cx/unifiedDownload;->getDownloadStatusByUrl:Lccsanandroid/graphics/Rect;

    .line 5
    new-instance p2, Lccsanandroid/graphics/Rect;

    invoke-direct {p2}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lccsansan/cx/unifiedDownload;->getDownloadedCount:Lccsanandroid/graphics/Rect;

    .line 6
    new-instance p2, Lccsanandroid/graphics/Rect;

    invoke-direct {p2}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lccsansan/cx/unifiedDownload;->pause:Lccsanandroid/graphics/Rect;

    .line 23
    new-instance p2, Lccsanandroid/graphics/drawable/StateListDrawable;

    invoke-direct {p2}, Lccsanandroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object p2, p0, Lccsansan/cx/unifiedDownload;->unifiedDownload:Lccsanandroid/graphics/drawable/StateListDrawable;

    .line 24
    sget-object p3, Lccsansan/cx/unifiedDownload$unifiedDownload;->TOP_RIGHT:Lccsansan/cx/unifiedDownload$unifiedDownload;

    iput-object p3, p0, Lccsansan/cx/unifiedDownload;->removeDownloadListener:Lccsansan/cx/unifiedDownload$unifiedDownload;

    .line 26
    sget-object p3, Lccsanandroid/widget/FrameLayout;->SELECTED_STATE_SET:[I

    sget-object v0, Lccsansan/co/removeDownloadListener;->INTERSTITIAL_CLOSE_BUTTON_PRESSED:Lccsansan/co/removeDownloadListener;

    .line 27
    invoke-virtual {v0, p1}, Lccsansan/co/removeDownloadListener;->createDrawable(Lccsanandroid/content/Context;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 28
    invoke-virtual {p2, p3, v0}, Lccsanandroid/graphics/drawable/StateListDrawable;->addState([ILccsanandroid/graphics/drawable/Drawable;)V

    .line 30
    sget-object p3, Lccsanandroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    sget-object v0, Lccsansan/co/removeDownloadListener;->INTERSTITIAL_CLOSE_BUTTON_NORMAL:Lccsansan/co/removeDownloadListener;

    .line 31
    invoke-virtual {v0, p1}, Lccsansan/co/removeDownloadListener;->createDrawable(Lccsanandroid/content/Context;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 32
    invoke-virtual {p2, p3, v0}, Lccsanandroid/graphics/drawable/StateListDrawable;->addState([ILccsanandroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {p2, p3}, Lccsanandroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 36
    invoke-virtual {p2, p0}, Lccsanandroid/graphics/drawable/StateListDrawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 38
    invoke-static {p1}, Lccsanandroid/view/ViewConfiguration;->get(Lccsanandroid/content/Context;)Lccsanandroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lccsansan/cx/unifiedDownload;->getDownloadingList:I

    .line 40
    const/high16 p2, 0x42480000    # 50.0f

    invoke-static {p2, p1}, Lccsansan/cx/removeDownloadListener;->getDownloadStatusByUrl(FLccsanandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lccsansan/cx/unifiedDownload;->IncentiveDownloadUtils:I

    .line 41
    const/high16 p2, 0x41f00000    # 30.0f

    invoke-static {p2, p1}, Lccsansan/cx/removeDownloadListener;->getDownloadStatusByUrl(FLccsanandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lccsansan/cx/unifiedDownload;->deleteDownItem:I

    .line 42
    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2, p1}, Lccsansan/cx/removeDownloadListener;->getDownloadStatusByUrl(FLccsanandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lccsansan/cx/unifiedDownload;->getDownloadingRecordByUrl:I

    .line 44
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 45
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsansan/cx/unifiedDownload;->getDownloadingCount:Z

    return-void
.end method

.method private addDownloadListener(Lccsansan/cx/unifiedDownload$unifiedDownload;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V
    .locals 1

    .line 2
    iget v0, p0, Lccsansan/cx/unifiedDownload;->deleteDownItem:I

    invoke-direct {p0, p1, v0, p2, p3}, Lccsansan/cx/unifiedDownload;->unifiedDownload(Lccsansan/cx/unifiedDownload$unifiedDownload;ILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    return-void
.end method

.method private removeDownloadListener()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroid/widget/FrameLayout;->playSoundEffect(I)V

    .line 2
    iget-object v0, p0, Lccsansan/cx/unifiedDownload;->addDownloadListener:Lccsansan/cx/unifiedDownload$removeDownloadListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lccsansan/cx/unifiedDownload$removeDownloadListener;->removeDownloadListener()V

    :cond_0
    return-void
.end method

.method private setClosePressed(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsansan/cx/unifiedDownload;->getDownloadingList()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lccsansan/cx/unifiedDownload;->unifiedDownload:Lccsanandroid/graphics/drawable/StateListDrawable;

    if-eqz p1, :cond_1

    sget-object p1, Lccsanandroid/widget/FrameLayout;->SELECTED_STATE_SET:[I

    goto :goto_0

    :cond_1
    sget-object p1, Lccsanandroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    :goto_0
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 6
    iget-object p1, p0, Lccsansan/cx/unifiedDownload;->getDownloadStatusByUrl:Lccsanandroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->invalidate(Lccsanandroid/graphics/Rect;)V

    return-void
.end method

.method private unifiedDownload(Lccsansan/cx/unifiedDownload$unifiedDownload;ILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lccsansan/cx/unifiedDownload$unifiedDownload;->getGravity()I

    move-result p1

    invoke-static {p1, p2, p2, p3, p4}, Lccsanandroid/view/Gravity;->apply(IIILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic unifiedDownload(Lccsansan/cx/unifiedDownload;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsansan/cx/unifiedDownload;->setClosePressed(Z)V

    return-void
.end method


# virtual methods
.method IncentiveDownloadUtils()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/cx/unifiedDownload;->getDownloadingCount:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsansan/cx/unifiedDownload;->unifiedDownload:Lccsanandroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/StateListDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public addDownloadListener()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/cx/unifiedDownload;->unifiedDownload:Lccsanandroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/StateListDrawable;->isVisible()Z

    move-result v0

    return v0
.end method

.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 4
    iget-boolean v0, p0, Lccsansan/cx/unifiedDownload;->getDownloadedList:Z

    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/cx/unifiedDownload;->getDownloadedList:Z

    .line 7
    iget-object v1, p0, Lccsansan/cx/unifiedDownload;->getDownloadedRecordByUrl:Lccsanandroid/graphics/Rect;

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 9
    iget-object v0, p0, Lccsansan/cx/unifiedDownload;->removeDownloadListener:Lccsansan/cx/unifiedDownload$unifiedDownload;

    iget-object v1, p0, Lccsansan/cx/unifiedDownload;->getDownloadedRecordByUrl:Lccsanandroid/graphics/Rect;

    iget-object v2, p0, Lccsansan/cx/unifiedDownload;->getDownloadStatusByUrl:Lccsanandroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2}, Lccsansan/cx/unifiedDownload;->getDownloadingList(Lccsansan/cx/unifiedDownload$unifiedDownload;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    .line 12
    iget-object v0, p0, Lccsansan/cx/unifiedDownload;->pause:Lccsanandroid/graphics/Rect;

    iget-object v1, p0, Lccsansan/cx/unifiedDownload;->getDownloadStatusByUrl:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Rect;->set(Lccsanandroid/graphics/Rect;)V

    .line 13
    iget-object v0, p0, Lccsansan/cx/unifiedDownload;->pause:Lccsanandroid/graphics/Rect;

    iget v1, p0, Lccsansan/cx/unifiedDownload;->getDownloadingRecordByUrl:I

    invoke-virtual {v0, v1, v1}, Lccsanandroid/graphics/Rect;->inset(II)V

    .line 16
    iget-object v0, p0, Lccsansan/cx/unifiedDownload;->removeDownloadListener:Lccsansan/cx/unifiedDownload$unifiedDownload;

    iget-object v1, p0, Lccsansan/cx/unifiedDownload;->pause:Lccsanandroid/graphics/Rect;

    iget-object v2, p0, Lccsansan/cx/unifiedDownload;->getDownloadedCount:Lccsanandroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2}, Lccsansan/cx/unifiedDownload;->addDownloadListener(Lccsansan/cx/unifiedDownload$unifiedDownload;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    .line 17
    iget-object v0, p0, Lccsansan/cx/unifiedDownload;->unifiedDownload:Lccsanandroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lccsansan/cx/unifiedDownload;->getDownloadedCount:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/StateListDrawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 22
    :cond_0
    iget-object v0, p0, Lccsansan/cx/unifiedDownload;->unifiedDownload:Lccsanandroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/StateListDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lccsansan/cx/unifiedDownload;->unifiedDownload:Lccsanandroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/StateListDrawable;->draw(Lccsanandroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method getCloseBounds()Lccsanandroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cx/unifiedDownload;->getDownloadStatusByUrl:Lccsanandroid/graphics/Rect;

    return-object v0
.end method

.method public getDownloadingList(Lccsansan/cx/unifiedDownload$unifiedDownload;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/cx/unifiedDownload;->IncentiveDownloadUtils:I

    invoke-direct {p0, p1, v0, p2, p3}, Lccsansan/cx/unifiedDownload;->unifiedDownload(Lccsansan/cx/unifiedDownload$unifiedDownload;ILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    return-void
.end method

.method getDownloadingList()Z
    .locals 2

    .line 4
    iget-object v0, p0, Lccsansan/cx/unifiedDownload;->unifiedDownload:Lccsanandroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    sget-object v1, Lccsanandroid/widget/FrameLayout;->SELECTED_STATE_SET:[I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterceptTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 8
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 9
    invoke-virtual {p0, v0, p1, v1}, Lccsansan/cx/unifiedDownload;->unifiedDownload(III)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsansan/cx/unifiedDownload;->getDownloadedList:Z

    return-void
.end method

.method public onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 3
    iget v2, p0, Lccsansan/cx/unifiedDownload;->getDownloadingList:I

    invoke-virtual {p0, v0, v1, v2}, Lccsansan/cx/unifiedDownload;->unifiedDownload(III)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lccsansan/cx/unifiedDownload;->IncentiveDownloadUtils()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    invoke-direct {p0, v1}, Lccsansan/cx/unifiedDownload;->setClosePressed(Z)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p0}, Lccsansan/cx/unifiedDownload;->getDownloadingList()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p0, Lccsansan/cx/unifiedDownload;->deleteDownList:Lccsansan/cx/unifiedDownload$getDownloadingList;

    if-nez p1, :cond_3

    .line 22
    new-instance p1, Lccsansan/cx/unifiedDownload$getDownloadingList;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lccsansan/cx/unifiedDownload$getDownloadingList;-><init>(Lccsansan/cx/unifiedDownload;Lccsansan/cx/unifiedDownload$addDownloadListener;)V

    iput-object p1, p0, Lccsansan/cx/unifiedDownload;->deleteDownList:Lccsansan/cx/unifiedDownload$getDownloadingList;

    .line 24
    :cond_3
    iget-object p1, p0, Lccsansan/cx/unifiedDownload;->deleteDownList:Lccsansan/cx/unifiedDownload$getDownloadingList;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lccsanandroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    invoke-direct {p0}, Lccsansan/cx/unifiedDownload;->removeDownloadListener()V

    goto :goto_0

    :cond_4
    nop

    .line 26
    invoke-direct {p0, v0}, Lccsansan/cx/unifiedDownload;->setClosePressed(Z)V

    :cond_5
    :goto_0
    return v0

    :cond_6
    :goto_1
    nop

    .line 27
    invoke-direct {p0, v1}, Lccsansan/cx/unifiedDownload;->setClosePressed(Z)V

    .line 28
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    return v1
.end method

.method public setCloseAlwaysInteractable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsansan/cx/unifiedDownload;->getDownloadingCount:Z

    return-void
.end method

.method setCloseBoundChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsansan/cx/unifiedDownload;->getDownloadedList:Z

    return-void
.end method

.method setCloseBounds(Lccsanandroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cx/unifiedDownload;->getDownloadStatusByUrl:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Rect;->set(Lccsanandroid/graphics/Rect;)V

    return-void
.end method

.method public setClosePosition(Lccsansan/cx/unifiedDownload$unifiedDownload;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lccsansan/cx/unifiedDownload;->removeDownloadListener:Lccsansan/cx/unifiedDownload$unifiedDownload;

    .line 4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsansan/cx/unifiedDownload;->getDownloadedList:Z

    .line 5
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setCloseVisible(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/cx/unifiedDownload;->unifiedDownload:Lccsanandroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lccsanandroid/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lccsansan/cx/unifiedDownload;->getDownloadStatusByUrl:Lccsanandroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->invalidate(Lccsanandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setOnCloseListener(Lccsansan/cx/unifiedDownload$removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cx/unifiedDownload;->addDownloadListener:Lccsansan/cx/unifiedDownload$removeDownloadListener;

    return-void
.end method

.method unifiedDownload(III)Z
    .locals 2

    .line 5
    iget-object v0, p0, Lccsansan/cx/unifiedDownload;->getDownloadStatusByUrl:Lccsanandroid/graphics/Rect;

    iget v1, v0, Lccsanandroid/graphics/Rect;->left:I

    sub-int/2addr v1, p3

    if-lt p1, v1, :cond_0

    iget v1, v0, Lccsanandroid/graphics/Rect;->top:I

    sub-int/2addr v1, p3

    if-lt p2, v1, :cond_0

    iget v1, v0, Lccsanandroid/graphics/Rect;->right:I

    add-int/2addr v1, p3

    if-ge p1, v1, :cond_0

    iget p1, v0, Lccsanandroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p3

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

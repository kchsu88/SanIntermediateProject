.class public Lccsancom/google/android/material/dialog/InsetDialogOnTouchListener;
.super Ljava/lang/Object;
.source "InsetDialogOnTouchListener.java"

# interfaces
.implements Lccsanandroid/view/View$OnTouchListener;


# instance fields
.field private final dialog:Lccsanandroid/app/Dialog;

.field private final leftInset:I

.field private final prePieSlop:I

.field private final topInset:I


# direct methods
.method public constructor <init>(Lccsanandroid/app/Dialog;Lccsanandroid/graphics/Rect;)V
    .locals 1
    .param p1, "dialog"    # Lccsanandroid/app/Dialog;
    .param p2, "insets"    # Lccsanandroid/graphics/Rect;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lccsancom/google/android/material/dialog/InsetDialogOnTouchListener;->dialog:Lccsanandroid/app/Dialog;

    .line 47
    iget v0, p2, Lccsanandroid/graphics/Rect;->left:I

    iput v0, p0, Lccsancom/google/android/material/dialog/InsetDialogOnTouchListener;->leftInset:I

    .line 48
    iget v0, p2, Lccsanandroid/graphics/Rect;->top:I

    iput v0, p0, Lccsancom/google/android/material/dialog/InsetDialogOnTouchListener;->topInset:I

    .line 49
    invoke-virtual {p1}, Lccsanandroid/app/Dialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/view/ViewConfiguration;->get(Lccsanandroid/content/Context;)Lccsanandroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/dialog/InsetDialogOnTouchListener;->prePieSlop:I

    .line 50
    return-void
.end method


# virtual methods
.method public onTouch(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/MotionEvent;

    .line 54
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "insetView":Lccsanandroid/view/View;
    iget v1, p0, Lccsancom/google/android/material/dialog/InsetDialogOnTouchListener;->leftInset:I

    invoke-virtual {v0}, Lccsanandroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 57
    .local v1, "insetLeft":I
    invoke-virtual {v0}, Lccsanandroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 58
    .local v2, "insetRight":I
    iget v3, p0, Lccsancom/google/android/material/dialog/InsetDialogOnTouchListener;->topInset:I

    invoke-virtual {v0}, Lccsanandroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    .line 59
    .local v3, "insetTop":I
    invoke-virtual {v0}, Lccsanandroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 61
    .local v4, "insetBottom":I
    new-instance v5, Lccsanandroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v3

    int-to-float v8, v2

    int-to-float v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    .line 62
    .local v5, "dialogWindow":Lccsanandroid/graphics/RectF;
    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lccsanandroid/graphics/RectF;->contains(FF)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 63
    return v7

    .line 65
    :cond_0
    invoke-static {p2}, Lccsanandroid/view/MotionEvent;->obtain(Lccsanandroid/view/MotionEvent;)Lccsanandroid/view/MotionEvent;

    move-result-object v6

    .line 66
    .local v6, "outsideEvent":Lccsanandroid/view/MotionEvent;
    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 67
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Lccsanandroid/view/MotionEvent;->setAction(I)V

    .line 71
    :cond_1
    sget v8, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-ge v8, v10, :cond_2

    .line 72
    invoke-virtual {v6, v7}, Lccsanandroid/view/MotionEvent;->setAction(I)V

    .line 73
    iget v7, p0, Lccsancom/google/android/material/dialog/InsetDialogOnTouchListener;->prePieSlop:I

    neg-int v8, v7

    sub-int/2addr v8, v9

    int-to-float v8, v8

    neg-int v7, v7

    sub-int/2addr v7, v9

    int-to-float v7, v7

    invoke-virtual {v6, v8, v7}, Lccsanandroid/view/MotionEvent;->setLocation(FF)V

    .line 75
    :cond_2
    invoke-virtual {p1}, Lccsanandroid/view/View;->performClick()Z

    .line 76
    iget-object v7, p0, Lccsancom/google/android/material/dialog/InsetDialogOnTouchListener;->dialog:Lccsanandroid/app/Dialog;

    invoke-virtual {v7, v6}, Lccsanandroid/app/Dialog;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v7

    return v7
.end method

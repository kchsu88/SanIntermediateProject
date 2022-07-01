.class public Lccsanandroidx/core/view/DragStartHelper;
.super Ljava/lang/Object;
.source "DragStartHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/DragStartHelper$OnDragStartListener;
    }
.end annotation


# instance fields
.field private mDragging:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private final mListener:Lccsanandroidx/core/view/DragStartHelper$OnDragStartListener;

.field private final mLongClickListener:Lccsanandroid/view/View$OnLongClickListener;

.field private final mTouchListener:Lccsanandroid/view/View$OnTouchListener;

.field private final mView:Lccsanandroid/view/View;


# direct methods
.method public constructor <init>(Lccsanandroid/view/View;Lccsanandroidx/core/view/DragStartHelper$OnDragStartListener;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "listener"    # Lccsanandroidx/core/view/DragStartHelper$OnDragStartListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "listener"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Lccsanandroidx/core/view/DragStartHelper$1;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/DragStartHelper$1;-><init>(Lccsanandroidx/core/view/DragStartHelper;)V

    iput-object v0, p0, Lccsanandroidx/core/view/DragStartHelper;->mLongClickListener:Lccsanandroid/view/View$OnLongClickListener;

    .line 188
    new-instance v0, Lccsanandroidx/core/view/DragStartHelper$2;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/DragStartHelper$2;-><init>(Lccsanandroidx/core/view/DragStartHelper;)V

    iput-object v0, p0, Lccsanandroidx/core/view/DragStartHelper;->mTouchListener:Lccsanandroid/view/View$OnTouchListener;

    .line 97
    iput-object p1, p0, Lccsanandroidx/core/view/DragStartHelper;->mView:Lccsanandroid/view/View;

    .line 98
    iput-object p2, p0, Lccsanandroidx/core/view/DragStartHelper;->mListener:Lccsanandroidx/core/view/DragStartHelper$OnDragStartListener;

    .line 99
    return-void
.end method


# virtual methods
.method public attach()V
    .locals 2

    .line 107
    iget-object v0, p0, Lccsanandroidx/core/view/DragStartHelper;->mView:Lccsanandroid/view/View;

    iget-object v1, p0, Lccsanandroidx/core/view/DragStartHelper;->mLongClickListener:Lccsanandroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnLongClickListener(Lccsanandroid/view/View$OnLongClickListener;)V

    .line 108
    iget-object v0, p0, Lccsanandroidx/core/view/DragStartHelper;->mView:Lccsanandroid/view/View;

    iget-object v1, p0, Lccsanandroidx/core/view/DragStartHelper;->mTouchListener:Lccsanandroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 109
    return-void
.end method

.method public detach()V
    .locals 2

    .line 117
    iget-object v0, p0, Lccsanandroidx/core/view/DragStartHelper;->mView:Lccsanandroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnLongClickListener(Lccsanandroid/view/View$OnLongClickListener;)V

    .line 118
    iget-object v0, p0, Lccsanandroidx/core/view/DragStartHelper;->mView:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 119
    return-void
.end method

.method public getTouchPosition(Lccsanandroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Lccsanandroid/graphics/Point;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "point"
        }
    .end annotation

    .line 178
    iget v0, p0, Lccsanandroidx/core/view/DragStartHelper;->mLastTouchX:I

    iget v1, p0, Lccsanandroidx/core/view/DragStartHelper;->mLastTouchY:I

    invoke-virtual {p1, v0, v1}, Lccsanandroid/graphics/Point;->set(II)V

    .line 179
    return-void
.end method

.method public onLongClick(Lccsanandroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lccsanandroidx/core/view/DragStartHelper;->mListener:Lccsanandroidx/core/view/DragStartHelper$OnDragStartListener;

    invoke-interface {v0, p1, p0}, Lccsanandroidx/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Lccsanandroid/view/View;Lccsanandroidx/core/view/DragStartHelper;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 129
    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 130
    .local v0, "x":I
    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 131
    .local v1, "y":I
    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 138
    :pswitch_0
    const/16 v2, 0x2002

    invoke-static {p2, v2}, Lccsanandroidx/core/view/MotionEventCompat;->isFromSource(Lccsanandroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 141
    goto :goto_0

    .line 143
    :cond_0
    iget-boolean v2, p0, Lccsanandroidx/core/view/DragStartHelper;->mDragging:Z

    if-eqz v2, :cond_1

    .line 145
    goto :goto_0

    .line 147
    :cond_1
    iget v2, p0, Lccsanandroidx/core/view/DragStartHelper;->mLastTouchX:I

    if-ne v2, v0, :cond_2

    iget v2, p0, Lccsanandroidx/core/view/DragStartHelper;->mLastTouchY:I

    if-ne v2, v1, :cond_2

    .line 149
    goto :goto_0

    .line 151
    :cond_2
    iput v0, p0, Lccsanandroidx/core/view/DragStartHelper;->mLastTouchX:I

    .line 152
    iput v1, p0, Lccsanandroidx/core/view/DragStartHelper;->mLastTouchY:I

    .line 153
    iget-object v2, p0, Lccsanandroidx/core/view/DragStartHelper;->mListener:Lccsanandroidx/core/view/DragStartHelper$OnDragStartListener;

    invoke-interface {v2, p1, p0}, Lccsanandroidx/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Lccsanandroid/view/View;Lccsanandroidx/core/view/DragStartHelper;)Z

    move-result v2

    iput-boolean v2, p0, Lccsanandroidx/core/view/DragStartHelper;->mDragging:Z

    .line 154
    return v2

    .line 158
    :pswitch_1
    iput-boolean v3, p0, Lccsanandroidx/core/view/DragStartHelper;->mDragging:Z

    goto :goto_0

    .line 133
    :pswitch_2
    iput v0, p0, Lccsanandroidx/core/view/DragStartHelper;->mLastTouchX:I

    .line 134
    iput v1, p0, Lccsanandroidx/core/view/DragStartHelper;->mLastTouchY:I

    .line 135
    nop

    .line 161
    :cond_3
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

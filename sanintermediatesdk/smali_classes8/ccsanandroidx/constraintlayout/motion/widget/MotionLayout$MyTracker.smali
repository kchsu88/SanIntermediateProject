.class Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;
.super Ljava/lang/Object;
.source "MotionLayout.java"

# interfaces
.implements Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTracker"
.end annotation


# static fields
.field private static me:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;


# instance fields
.field tracker:Lccsanandroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1071
    new-instance v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    invoke-direct {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;-><init>()V

    sput-object v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->me:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;
    .locals 2

    .line 1074
    sget-object v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->me:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    invoke-static {}, Lccsanandroid/view/VelocityTracker;->obtain()Lccsanandroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Lccsanandroid/view/VelocityTracker;

    .line 1075
    sget-object v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->me:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    return-object v0
.end method


# virtual methods
.method public addMovement(Lccsanandroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/MotionEvent;

    .line 1091
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Lccsanandroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual {v0, p1}, Lccsanandroid/view/VelocityTracker;->addMovement(Lccsanandroid/view/MotionEvent;)V

    .line 1094
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1086
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Lccsanandroid/view/VelocityTracker;

    invoke-virtual {v0}, Lccsanandroid/view/VelocityTracker;->clear()V

    .line 1087
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 1
    .param p1, "units"    # I

    .line 1098
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Lccsanandroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Lccsanandroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1099
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 1
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # F

    .line 1103
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Lccsanandroid/view/VelocityTracker;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1104
    return-void
.end method

.method public getXVelocity()F
    .locals 1

    .line 1108
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Lccsanandroid/view/VelocityTracker;

    invoke-virtual {v0}, Lccsanandroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    return v0
.end method

.method public getXVelocity(I)F
    .locals 1
    .param p1, "id"    # I

    .line 1118
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Lccsanandroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Lccsanandroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method

.method public getYVelocity()F
    .locals 1

    .line 1113
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Lccsanandroid/view/VelocityTracker;

    invoke-virtual {v0}, Lccsanandroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0
.end method

.method public getYVelocity(I)F
    .locals 1
    .param p1, "id"    # I

    .line 1123
    invoke-virtual {p0, p1}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 1080
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Lccsanandroid/view/VelocityTracker;

    invoke-virtual {v0}, Lccsanandroid/view/VelocityTracker;->recycle()V

    .line 1081
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Lccsanandroid/view/VelocityTracker;

    .line 1082
    return-void
.end method

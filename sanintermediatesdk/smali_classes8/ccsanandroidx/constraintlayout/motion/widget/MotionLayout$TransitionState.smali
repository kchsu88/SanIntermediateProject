.class final enum Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
.super Ljava/lang/Enum;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TransitionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public static final enum FINISHED:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public static final enum MOVING:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public static final enum SETUP:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public static final enum UNDEFINED:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 953
    new-instance v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 954
    new-instance v1, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    const-string v3, "SETUP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 955
    new-instance v3, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    const-string v5, "MOVING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 956
    new-instance v5, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    const-string v7, "FINISHED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 952
    const/4 v7, 0x4

    new-array v7, v7, [Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->$VALUES:[Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 952
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 952
    const-class v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    return-object v0
.end method

.method public static values()[Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    .locals 1

    .line 952
    sget-object v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->$VALUES:[Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0}, [Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    return-object v0
.end method

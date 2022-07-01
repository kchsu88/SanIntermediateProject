.class public final Lccsanandroidx/work/Operation$State$IN_PROGRESS;
.super Lccsanandroidx/work/Operation$State;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/Operation$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IN_PROGRESS"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Lccsanandroidx/work/Operation$State;-><init>()V

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Lccsanandroidx/work/Operation$1;)V
    .locals 0
    .param p1, "x0"    # Lccsanandroidx/work/Operation$1;

    .line 108
    invoke-direct {p0}, Lccsanandroidx/work/Operation$State$IN_PROGRESS;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 116
    const-string v0, "IN_PROGRESS"

    return-object v0
.end method

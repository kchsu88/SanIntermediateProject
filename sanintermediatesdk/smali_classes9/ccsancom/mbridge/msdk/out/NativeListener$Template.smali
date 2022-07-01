.class public Lccsancom/mbridge/msdk/out/NativeListener$Template;
.super Ljava/lang/Object;
.source "NativeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/out/NativeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Template"
.end annotation


# instance fields
.field private adNum:I

.field private id:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lccsancom/mbridge/msdk/out/NativeListener$Template;->id:I

    .line 54
    iput p2, p0, Lccsancom/mbridge/msdk/out/NativeListener$Template;->adNum:I

    .line 55
    return-void
.end method


# virtual methods
.method public getAdNum()I
    .locals 1

    .line 66
    iget v0, p0, Lccsancom/mbridge/msdk/out/NativeListener$Template;->adNum:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 58
    iget v0, p0, Lccsancom/mbridge/msdk/out/NativeListener$Template;->id:I

    return v0
.end method

.method public setAdNum(I)V
    .locals 0

    .line 70
    iput p1, p0, Lccsancom/mbridge/msdk/out/NativeListener$Template;->adNum:I

    .line 71
    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 62
    iput p1, p0, Lccsancom/mbridge/msdk/out/NativeListener$Template;->id:I

    .line 63
    return-void
.end method

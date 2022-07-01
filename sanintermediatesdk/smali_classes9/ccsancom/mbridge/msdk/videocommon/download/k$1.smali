.class final Lccsancom/mbridge/msdk/videocommon/download/k$1;
.super Ljava/lang/Object;
.source "UnitCacheCtroller.java"

# interfaces
.implements Lccsancom/mbridge/msdk/videocommon/download/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/videocommon/download/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/videocommon/download/k;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/videocommon/download/k;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k$1;->a:Lccsancom/mbridge/msdk/videocommon/download/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JI)V
    .locals 0

    .line 46
    const/4 p1, 0x1

    const/4 p2, 0x5

    if-eq p3, p2, :cond_0

    const/4 p2, 0x4

    if-ne p3, p2, :cond_1

    .line 47
    :cond_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/k$1;->a:Lccsancom/mbridge/msdk/videocommon/download/k;

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/k;Z)Z

    .line 48
    iget-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/k$1;->a:Lccsancom/mbridge/msdk/videocommon/download/k;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/videocommon/download/k;->a()V

    .line 50
    :cond_1
    const/4 p2, 0x2

    if-ne p3, p2, :cond_2

    .line 51
    iget-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/k$1;->a:Lccsancom/mbridge/msdk/videocommon/download/k;

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/k;Z)Z

    .line 53
    :cond_2
    return-void
.end method

.class public abstract Lccsancom/mbridge/msdk/widget/a;
.super Ljava/lang/Object;
.source "MBridgeNoDoubleClick.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/widget/a;->a:J

    return-void
.end method


# virtual methods
.method protected abstract a(Lccsanandroid/view/View;)V
.end method

.method public onClick(Lccsanandroid/view/View;)V
    .locals 7

    .line 16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 17
    iget-wide v2, p0, Lccsancom/mbridge/msdk/widget/a;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 18
    iput-wide v0, p0, Lccsancom/mbridge/msdk/widget/a;->a:J

    .line 19
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/widget/a;->a(Lccsanandroid/view/View;)V

    .line 21
    :cond_0
    return-void
.end method
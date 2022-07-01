.class public final Lccsancom/mbridge/msdk/videocommon/a$a;
.super Ljava/lang/Object;
.source "TemplateWebviewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/videocommon/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    .locals 1

    .line 31
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/a$a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    return-object v0
.end method

.method public final a(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/a$a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 36
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/a$a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setTag(Ljava/lang/Object;)V

    .line 42
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/videocommon/a$a;->b:Z

    .line 57
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/a$a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 48
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/videocommon/a$a;->b:Z

    return v0
.end method

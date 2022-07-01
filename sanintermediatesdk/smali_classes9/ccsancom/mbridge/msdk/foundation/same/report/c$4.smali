.class final Lccsancom/mbridge/msdk/foundation/same/report/c$4;
.super Lccsancom/mbridge/msdk/foundation/same/report/d/b;
.source "ReportController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/out/Frame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/same/report/c;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/same/report/c;Ljava/lang/String;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/c$4;->b:Lccsancom/mbridge/msdk/foundation/same/report/c;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/report/c$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/report/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 341
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/c$4;->a:Ljava/lang/String;

    const-string v0, "click_duration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/c$4;->a:Ljava/lang/String;

    const-string v0, "load_duration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 342
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/b;->a()Lccsancom/mbridge/msdk/foundation/controller/b;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/b;->c()V

    .line 344
    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 349
    return-void
.end method

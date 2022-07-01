.class final Lccsancom/mbridge/msdk/foundation/same/report/c$3;
.super Lccsancom/mbridge/msdk/foundation/same/report/d/b;
.source "ReportController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/same/report/c;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/same/report/c;Ljava/io/File;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/c$3;->b:Lccsancom/mbridge/msdk/foundation/same/report/c;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/report/c$3;->a:Ljava/io/File;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/report/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 318
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/c$3;->a:Ljava/io/File;

    if-eqz p1, :cond_0

    .line 319
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 321
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 325
    return-void
.end method

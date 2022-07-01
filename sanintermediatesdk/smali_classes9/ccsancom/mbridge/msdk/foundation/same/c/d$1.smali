.class final Lccsancom/mbridge/msdk/foundation/same/c/d$1;
.super Lccsancom/mbridge/msdk/foundation/same/net/f;
.source "CommonImageTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/same/c/d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/foundation/same/net/f<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/same/c/d;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/same/c/d;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/c/d$1;->a:Lccsancom/mbridge/msdk/foundation/same/c/d;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    .line 94
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)V
    .locals 4

    .line 83
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/c/d$1;->a:Lccsancom/mbridge/msdk/foundation/same/c/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/c/d;->b(Lccsancom/mbridge/msdk/foundation/same/c/d;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load image from http faild because http return code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;->a:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".image url is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/c/d$1;->a:Lccsancom/mbridge/msdk/foundation/same/c/d;

    .line 85
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/c/d;->b(Lccsancom/mbridge/msdk/foundation/same/c/d;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/c/d;->a(Lccsancom/mbridge/msdk/foundation/same/c/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/k;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/c/d$1;->a:Lccsancom/mbridge/msdk/foundation/same/c/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/c/d;->a(Lccsancom/mbridge/msdk/foundation/same/c/d;)Ljava/lang/String;

    .line 78
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/c/d$1;->a:Lccsancom/mbridge/msdk/foundation/same/c/d;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/c/d;->c()V

    .line 79
    return-void
.end method

.method public final b()V
    .locals 0

    .line 90
    return-void
.end method

.class public final Lccsancom/mbridge/msdk/mbnative/c/b$c;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbnative/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbnative/c/b;

.field private b:I

.field private c:Lccsancom/mbridge/msdk/foundation/same/e/c;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/mbnative/c/b;ILccsancom/mbridge/msdk/foundation/same/e/c;ILjava/lang/String;)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$c;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1238
    iput p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$c;->b:I

    .line 1239
    iput-object p3, p0, Lccsancom/mbridge/msdk/mbnative/c/b$c;->c:Lccsancom/mbridge/msdk/foundation/same/e/c;

    .line 1240
    iput p4, p0, Lccsancom/mbridge/msdk/mbnative/c/b$c;->d:I

    .line 1241
    iput-object p5, p0, Lccsancom/mbridge/msdk/mbnative/c/b$c;->e:Ljava/lang/String;

    .line 1242
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1246
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$c;->c:Lccsancom/mbridge/msdk/foundation/same/e/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/e/c;->a(Z)V

    .line 1247
    iget v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$c;->b:I

    const-string v2, "REQUEST_TIMEOUT"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1253
    :pswitch_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$c;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->e(Lccsancom/mbridge/msdk/mbnative/c/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$c;->d:I

    if-ne v0, v1, :cond_1

    .line 1254
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$c;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$c;->d:I

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b$c;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1249
    :pswitch_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$c;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Lccsancom/mbridge/msdk/mbnative/c/b;Z)Z

    .line 1250
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$c;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$c;->d:I

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b$c;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1251
    nop

    .line 1260
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

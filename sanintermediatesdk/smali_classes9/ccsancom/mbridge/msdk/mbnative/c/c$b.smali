.class public final Lccsancom/mbridge/msdk/mbnative/c/c$b;
.super Ljava/lang/Object;
.source "NativePreloadController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbnative/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbnative/c/c;

.field private b:I

.field private c:Lccsancom/mbridge/msdk/foundation/same/e/c;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lccsancom/mbridge/msdk/a/a/a;

.field private h:Z


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/mbnative/c/c;ILccsancom/mbridge/msdk/foundation/same/e/c;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 988
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->h:Z

    .line 989
    iput p2, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->b:I

    .line 990
    iput-object p3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->c:Lccsancom/mbridge/msdk/foundation/same/e/c;

    .line 991
    iput p4, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->d:I

    .line 992
    iput-object p5, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->e:Ljava/lang/String;

    .line 993
    iput-object p6, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->f:Ljava/lang/String;

    .line 994
    return-void
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/a/a/a;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->g:Lccsancom/mbridge/msdk/a/a/a;

    .line 970
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 977
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->e:Ljava/lang/String;

    .line 978
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 965
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->h:Z

    .line 966
    return-void
.end method

.method public final run()V
    .locals 8

    .line 998
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->c:Lccsancom/mbridge/msdk/foundation/same/e/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/e/c;->a(Z)V

    .line 999
    iget v0, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1007
    :pswitch_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    iget v4, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->d:I

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->e:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->f:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->g:Lccsancom/mbridge/msdk/a/a/a;

    const-string v3, "REQUEST_TIMEOUT"

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/a/a/a;)V

    goto :goto_0

    .line 1001
    :pswitch_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(Lccsancom/mbridge/msdk/mbnative/c/c;Z)Z

    .line 1002
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->h:Z

    if-nez v0, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->d:I

    if-ne v0, v1, :cond_1

    .line 1003
    :cond_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    iget v4, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->d:I

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->e:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->f:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/mbnative/c/c$b;->g:Lccsancom/mbridge/msdk/a/a/a;

    const-string v3, "REQUEST_TIMEOUT"

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/a/a/a;)V

    .line 1010
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

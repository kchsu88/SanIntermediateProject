.class public Lccsancom/mbridge/msdk/video/signal/a/c;
.super Ljava/lang/Object;
.source "DefaultJSCommon.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/signal/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/video/signal/a/c$a;,
        Lccsancom/mbridge/msdk/video/signal/a/c$b;
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:Ljava/lang/String;

.field protected j:Lccsancom/mbridge/msdk/videocommon/d/c;

.field protected k:Lccsancom/mbridge/msdk/click/a;

.field public l:Lccsancom/mbridge/msdk/video/signal/c$a;

.field protected m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->a:Z

    .line 19
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->b:Z

    .line 21
    iput v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->c:I

    .line 22
    iput v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->d:I

    .line 23
    iput v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->e:I

    .line 25
    iput v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->f:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->g:I

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->h:I

    .line 38
    new-instance v0, Lccsancom/mbridge/msdk/video/signal/a/c$a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/video/signal/a/c$a;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->l:Lccsancom/mbridge/msdk/video/signal/c$a;

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->m:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 104
    iget v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->f:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .line 48
    iput p1, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->m:I

    .line 49
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "statistics,type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",json:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultJSCommon"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public a(Lccsanandroid/app/Activity;)V
    .locals 1

    .line 195
    const-string p1, "DefaultJSCommon"

    const-string v0, "setActivity "

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/video/signal/c$a;)V
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTrackingListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultJSCommon"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->l:Lccsancom/mbridge/msdk/video/signal/c$a;

    .line 137
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/videocommon/d/c;)V
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSetting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultJSCommon"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->j:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 143
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUnitId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultJSCommon"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->i:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsShowingTransparent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultJSCommon"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->b:Z

    .line 116
    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 59
    iput p1, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->d:I

    .line 60
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 221
    const-string p1, "DefaultJSCommon"

    const-string v0, "setNotchArea"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->a:Z

    .line 126
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->a:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 200
    const-string v0, "DefaultJSCommon"

    const-string v1, "init"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "{}"

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    .line 54
    iput p1, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->c:I

    .line 55
    return-void
.end method

.method public click(ILjava/lang/String;)V
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click:type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",pt:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultJSCommon"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public d()V
    .locals 2

    .line 216
    const-string v0, "DefaultJSCommon"

    const-string v1, "finish"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 64
    iput p1, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->e:I

    .line 65
    return-void
.end method

.method public final e()V
    .locals 2

    .line 147
    const-string v0, "DefaultJSCommon"

    const-string v1, "release"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->k:Lccsancom/mbridge/msdk/click/a;

    if-eqz v0, :cond_0

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/click/a;->a(Z)V

    .line 150
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->k:Lccsancom/mbridge/msdk/click/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 151
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->k:Lccsancom/mbridge/msdk/click/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/click/a;->a()V

    .line 153
    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 0

    .line 99
    iput p1, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->f:I

    .line 100
    return-void
.end method

.method public f()V
    .locals 0

    .line 163
    return-void
.end method

.method public final f(I)V
    .locals 0

    .line 167
    iput p1, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->h:I

    .line 168
    return-void
.end method

.method public final g()I
    .locals 1

    .line 172
    iget v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->h:I

    return v0
.end method

.method public g(I)Ljava/lang/String;
    .locals 1

    .line 177
    const-string p1, "DefaultJSCommon"

    const-string v0, "getSDKInfo"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string p1, "{}"

    return-object p1
.end method

.method public final h()I
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAlertDialogRole "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultJSCommon"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->g:I

    return v0
.end method

.method public final h(I)V
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlertDialogRole "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultJSCommon"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iput p1, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->g:I

    .line 185
    return-void
.end method

.method public handlerH5Exception(ILjava/lang/String;)V
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlerH5Exception,code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultJSCommon"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 226
    const-string v0, "DefaultJSCommon"

    const-string v1, "getNotchArea"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()I
    .locals 1

    .line 69
    iget v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->c:I

    if-nez v0, :cond_0

    .line 70
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->b:Z

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->c:I

    .line 74
    :cond_0
    iget v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->c:I

    return v0
.end method

.method public final k()I
    .locals 1

    .line 79
    iget v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->d:I

    if-nez v0, :cond_0

    .line 80
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->b:Z

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->d:I

    .line 84
    :cond_0
    iget v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->d:I

    return v0
.end method

.method public final l()I
    .locals 1

    .line 89
    iget v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->e:I

    if-nez v0, :cond_0

    .line 90
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->b:Z

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->e:I

    .line 94
    :cond_0
    iget v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->e:I

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c;->b:Z

    return v0
.end method

.class public Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;
.super Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;
.source "BannerSignalPlugin.java"


# instance fields
.field private final d:Ljava/lang/String;

.field private e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;-><init>()V

    .line 10
    const-string v0, "BannerSignalPlugin"

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public click(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 66
    const-string v0, "click"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    :goto_0
    return-void
.end method

.method public getFileInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 187
    const-string v0, "getFileInfo"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_0

    .line 189
    invoke-interface {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;->j(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_0
    goto :goto_0

    .line 191
    :catchall_0
    move-exception p1

    .line 192
    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    :goto_0
    return-void
.end method

.method public getNetstat(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 165
    const-string v0, "getNetstat"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_0

    .line 167
    invoke-interface {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;->o(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_0
    goto :goto_0

    .line 169
    :catchall_0
    move-exception p1

    .line 170
    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    :goto_0
    return-void
.end method

.method public handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 143
    const-string v0, "handlerH5Exception"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_0

    .line 145
    invoke-interface {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;->m(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    goto :goto_0

    .line 147
    :catchall_0
    move-exception p1

    .line 148
    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    :goto_0
    return-void
.end method

.method public increaseOfferFrequence(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 121
    const-string v0, "increaseOfferFrequence"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_0

    .line 123
    invoke-interface {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;->l(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    goto :goto_0

    .line 125
    :catchall_0
    move-exception p1

    .line 126
    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    :goto_0
    return-void
.end method

.method public init(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 55
    const-string v0, "init"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_0

    .line 57
    invoke-interface {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :goto_0
    return-void
.end method

.method public initialize(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V
    .locals 1

    .line 16
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;->initialize(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    .line 19
    :try_start_0
    instance-of v0, p1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v0, :cond_0

    .line 20
    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    :goto_0
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    const-string p2, "BannerSignalPlugin"

    const-string v0, "initialize"

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :goto_1
    return-void
.end method

.method public install(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 154
    const-string v0, "install"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_0

    .line 156
    invoke-interface {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    goto :goto_0

    .line 158
    :catchall_0
    move-exception p1

    .line 159
    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    :goto_0
    return-void
.end method

.method public onSignalCommunication(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 33
    const-string v0, "onSignalCommunication"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_0

    .line 35
    invoke-interface {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :goto_0
    return-void
.end method

.method public openURL(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 176
    const-string v0, "openURL"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_0

    .line 178
    invoke-interface {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;->n(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_0
    goto :goto_0

    .line 180
    :catchall_0
    move-exception p1

    .line 181
    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    :goto_0
    return-void
.end method

.method public readyStatus(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 44
    const-string v0, "readyStatus"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_0

    .line 46
    invoke-interface {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    :goto_0
    return-void
.end method

.method public reportUrls(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 110
    const-string v0, "reportUrls"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_0

    .line 112
    invoke-interface {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;->k(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    goto :goto_0

    .line 114
    :catchall_0
    move-exception p1

    .line 115
    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    :goto_0
    return-void
.end method

.method public resetCountdown(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 132
    const-string v0, "resetCountdown"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_0

    .line 134
    invoke-interface {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    goto :goto_0

    .line 136
    :catchall_0
    move-exception p1

    .line 137
    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    :goto_0
    return-void
.end method

.method public sendImpressions(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 99
    const-string v0, "sendImpressions"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_0

    .line 101
    invoke-interface {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    goto :goto_0

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    :goto_0
    return-void
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 77
    const-string v0, "toggleCloseBtn"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :goto_0
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 88
    const-string v0, "triggerCloseBtn"

    const-string v1, "BannerSignalPlugin"

    :try_start_0
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_0

    .line 90
    invoke-interface {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    :goto_0
    return-void
.end method

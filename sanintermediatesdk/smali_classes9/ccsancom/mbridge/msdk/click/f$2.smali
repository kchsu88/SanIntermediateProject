.class final Lccsancom/mbridge/msdk/click/f$2;
.super Lccsanandroid/webkit/WebViewClient;
.source "WebViewSpider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/click/f;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lccsanandroid/content/Context;

.field final synthetic d:Lccsancom/mbridge/msdk/click/f;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/click/f;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    iput-object p2, p0, Lccsancom/mbridge/msdk/click/f$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/mbridge/msdk/click/f$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/mbridge/msdk/click/f$2;->c:Lccsanandroid/content/Context;

    invoke-direct {p0}, Lccsanandroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 261
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->onPageFinished(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 263
    :try_start_0
    const-string p2, "javascript:window.navigator.vibrate([]);"

    invoke-virtual {p1, p2}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    goto :goto_0

    .line 264
    :catch_0
    move-exception p1

    .line 265
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    :goto_0
    return-void
.end method

.method public final onPageStarted(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V
    .locals 1

    .line 161
    :try_start_0
    const-string p3, "javascript:window.navigator.vibrate([]);"

    invoke-virtual {p1, p3}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 163
    iget-object p3, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p3}, Lccsancom/mbridge/msdk/click/f;->b(Lccsancom/mbridge/msdk/click/f;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 164
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/click/f;->a(Lccsancom/mbridge/msdk/click/f;I)I

    .line 165
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p1}, Lccsancom/mbridge/msdk/click/f;->c(Lccsancom/mbridge/msdk/click/f;)V

    .line 166
    return-void

    .line 169
    :cond_0
    iget-object p3, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    iput-boolean v0, p3, Lccsancom/mbridge/msdk/click/f;->c:Z

    .line 171
    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x1

    if-nez p3, :cond_1

    .line 172
    const-string p3, "has_first_started"

    invoke-virtual {p1, p3}, Lccsanandroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    iput-boolean v0, p1, Lccsancom/mbridge/msdk/click/f;->b:Z

    .line 177
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/click/f;->a()Ljava/lang/String;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :try_start_1
    iget-object p3, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p3, p2}, Lccsancom/mbridge/msdk/click/f;->a(Lccsancom/mbridge/msdk/click/f;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    iget-object p3, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p3}, Lccsancom/mbridge/msdk/click/f;->d(Lccsancom/mbridge/msdk/click/f;)Lccsancom/mbridge/msdk/click/f$a;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p3}, Lccsancom/mbridge/msdk/click/f;->d(Lccsancom/mbridge/msdk/click/f;)Lccsancom/mbridge/msdk/click/f$a;

    move-result-object p3

    invoke-interface {p3, p2}, Lccsancom/mbridge/msdk/click/f$a;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 181
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/click/f;->a(Lccsancom/mbridge/msdk/click/f;Z)Z

    .line 182
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p2}, Lccsancom/mbridge/msdk/click/f;->c(Lccsancom/mbridge/msdk/click/f;)V

    goto :goto_1

    .line 184
    :cond_2
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p2}, Lccsancom/mbridge/msdk/click/f;->e(Lccsancom/mbridge/msdk/click/f;)V

    .line 186
    :goto_1
    monitor-exit p1

    .line 189
    goto :goto_2

    .line 186
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    :catch_0
    move-exception p1

    .line 188
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    :goto_2
    return-void
.end method

.method public final onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 230
    invoke-static {}, Lccsancom/mbridge/msdk/click/f;->a()Ljava/lang/String;

    move-result-object p4

    monitor-enter p4

    .line 231
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/click/f;->a(Lccsancom/mbridge/msdk/click/f;Z)Z

    .line 232
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/f;->j(Lccsancom/mbridge/msdk/click/f;)V

    .line 233
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/f;->c(Lccsancom/mbridge/msdk/click/f;)V

    .line 235
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iget-object p4, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p4}, Lccsancom/mbridge/msdk/click/f;->d(Lccsancom/mbridge/msdk/click/f;)Lccsancom/mbridge/msdk/click/f$a;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 237
    iget-object p4, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p4}, Lccsancom/mbridge/msdk/click/f;->d(Lccsancom/mbridge/msdk/click/f;)Lccsancom/mbridge/msdk/click/f$a;

    move-result-object p4

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/f;->k(Lccsancom/mbridge/msdk/click/f;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, p2, p1, p3, v0}, Lccsancom/mbridge/msdk/click/f$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void

    .line 235
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onReceivedSslError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/SslErrorHandler;Lccsanandroid/net/http/SslError;)V
    .locals 1

    .line 244
    :try_start_0
    sget-boolean p3, Lccsancom/mbridge/msdk/MBridgeConstans;->IS_SP_CBT_CF:Z

    if-eqz p3, :cond_0

    .line 245
    if-eqz p2, :cond_0

    .line 246
    invoke-virtual {p2}, Lccsanandroid/webkit/SslErrorHandler;->cancel()V

    .line 249
    :cond_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f$2;->a:Ljava/lang/String;

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f$2;->b:Ljava/lang/String;

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 250
    new-instance p2, Lccsancom/mbridge/msdk/foundation/same/report/c;

    iget-object p3, p0, Lccsancom/mbridge/msdk/click/f$2;->c:Lccsanandroid/content/Context;

    invoke-direct {p2, p3}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;)V

    .line 251
    iget-object p3, p0, Lccsancom/mbridge/msdk/click/f$2;->b:Ljava/lang/String;

    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f$2;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_1
    goto :goto_0

    .line 253
    :catch_0
    move-exception p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    :goto_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 194
    invoke-static {}, Lccsancom/mbridge/msdk/click/f;->a()Ljava/lang/String;

    move-result-object p1

    monitor-enter p1

    .line 195
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/click/f;->c:Z

    .line 197
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/f;->f(Lccsancom/mbridge/msdk/click/f;)V

    .line 199
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/f;->b(Lccsancom/mbridge/msdk/click/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p2}, Lccsancom/mbridge/msdk/click/f;->g(Lccsancom/mbridge/msdk/click/f;)V

    .line 201
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p2}, Lccsancom/mbridge/msdk/click/f;->c(Lccsancom/mbridge/msdk/click/f;)V

    .line 202
    monitor-exit p1

    return v1

    .line 205
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/click/f;->a(Lccsancom/mbridge/msdk/click/f;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/f;->d(Lccsancom/mbridge/msdk/click/f;)Lccsancom/mbridge/msdk/click/f$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/f;->d(Lccsancom/mbridge/msdk/click/f;)Lccsancom/mbridge/msdk/click/f$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lccsancom/mbridge/msdk/click/f$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p2, v1}, Lccsancom/mbridge/msdk/click/f;->a(Lccsancom/mbridge/msdk/click/f;Z)Z

    .line 209
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p2}, Lccsancom/mbridge/msdk/click/f;->g(Lccsancom/mbridge/msdk/click/f;)V

    .line 210
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p2}, Lccsancom/mbridge/msdk/click/f;->c(Lccsancom/mbridge/msdk/click/f;)V

    .line 211
    monitor-exit p1

    return v1

    .line 213
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p1}, Lccsancom/mbridge/msdk/click/f;->h(Lccsancom/mbridge/msdk/click/f;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 216
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 217
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/f;->i(Lccsancom/mbridge/msdk/click/f;)Lccsanandroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 218
    const-string v0, "Referer"

    iget-object v2, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {v2}, Lccsancom/mbridge/msdk/click/f;->i(Lccsancom/mbridge/msdk/click/f;)Lccsanandroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/f;->i(Lccsancom/mbridge/msdk/click/f;)Lccsanandroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 221
    goto :goto_0

    .line 222
    :cond_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/f$2;->d:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p1}, Lccsancom/mbridge/msdk/click/f;->i(Lccsancom/mbridge/msdk/click/f;)Lccsanandroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 225
    :goto_0
    return v1

    .line 213
    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

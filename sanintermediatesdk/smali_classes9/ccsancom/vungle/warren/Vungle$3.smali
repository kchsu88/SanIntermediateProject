.class Lccsancom/vungle/warren/Vungle$3;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lccsancom/vungle/warren/network/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle;->configure(Lccsancom/vungle/warren/InitCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/vungle/warren/network/Callback<",
        "Lccsancom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/Vungle;

.field final synthetic val$preferences:Lccsancom/vungle/warren/persistence/FilePreferences;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/Vungle;Lccsancom/vungle/warren/persistence/FilePreferences;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/Vungle;

    .line 451
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$3;->this$0:Lccsancom/vungle/warren/Vungle;

    iput-object p2, p0, Lccsancom/vungle/warren/Vungle$3;->val$preferences:Lccsancom/vungle/warren/persistence/FilePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lccsancom/vungle/warren/network/Call;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 466
    .local p1, "call":Lccsancom/vungle/warren/network/Call;, "Lccsancom/vungle/warren/network/Call<Lccsancom/google/gson/JsonObject;>;"
    return-void
.end method

.method public onResponse(Lccsancom/vungle/warren/network/Call;Lccsancom/vungle/warren/network/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;",
            "Lccsancom/vungle/warren/network/Response<",
            "Lccsancom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .line 454
    .local p1, "call":Lccsancom/vungle/warren/network/Call;, "Lccsancom/vungle/warren/network/Call<Lccsancom/google/gson/JsonObject;>;"
    .local p2, "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    invoke-virtual {p2}, Lccsancom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$3;->val$preferences:Lccsancom/vungle/warren/persistence/FilePreferences;

    const/4 v1, 0x1

    const-string v2, "reported"

    invoke-virtual {v0, v2, v1}, Lccsancom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Z)Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 457
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$3;->val$preferences:Lccsancom/vungle/warren/persistence/FilePreferences;

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FilePreferences;->apply()V

    .line 458
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->access$1500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Saving reported state to shared preferences"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    return-void
.end method

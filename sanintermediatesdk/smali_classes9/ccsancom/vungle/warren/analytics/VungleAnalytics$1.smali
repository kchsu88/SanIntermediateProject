.class Lccsancom/vungle/warren/analytics/VungleAnalytics$1;
.super Ljava/lang/Object;
.source "VungleAnalytics.java"

# interfaces
.implements Lccsancom/vungle/warren/network/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/analytics/VungleAnalytics;->ri(Lccsancom/google/gson/JsonObject;)V
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
.field final synthetic this$0:Lccsancom/vungle/warren/analytics/VungleAnalytics;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/analytics/VungleAnalytics;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/analytics/VungleAnalytics;

    .line 70
    iput-object p1, p0, Lccsancom/vungle/warren/analytics/VungleAnalytics$1;->this$0:Lccsancom/vungle/warren/analytics/VungleAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lccsancom/vungle/warren/network/Call;Ljava/lang/Throwable;)V
    .locals 2
    .param p2, "t"    # Ljava/lang/Throwable;
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

    .line 79
    .local p1, "call":Lccsancom/vungle/warren/network/Call;, "Lccsancom/vungle/warren/network/Call<Lccsancom/google/gson/JsonObject;>;"
    invoke-static {}, Lccsancom/vungle/warren/analytics/VungleAnalytics;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "send RI Failure"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public onResponse(Lccsancom/vungle/warren/network/Call;Lccsancom/vungle/warren/network/Response;)V
    .locals 2
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

    .line 74
    .local p1, "call":Lccsancom/vungle/warren/network/Call;, "Lccsancom/vungle/warren/network/Call<Lccsancom/google/gson/JsonObject;>;"
    .local p2, "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    invoke-static {}, Lccsancom/vungle/warren/analytics/VungleAnalytics;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "send RI success"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.class public Lccsancom/vungle/warren/network/converters/JsonConverter;
.super Ljava/lang/Object;
.source "JsonConverter.java"

# interfaces
.implements Lccsancom/vungle/warren/network/converters/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/vungle/warren/network/converters/Converter<",
        "Lccsanokhttp3/ResponseBody;",
        "Lccsancom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final gson:Lccsancom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lccsancom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lccsancom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lccsancom/google/gson/GsonBuilder;->create()Lccsancom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/network/converters/JsonConverter;->gson:Lccsancom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lccsanokhttp3/ResponseBody;)Lccsancom/google/gson/JsonObject;
    .locals 3
    .param p1, "value"    # Lccsanokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    :try_start_0
    invoke-virtual {p1}, Lccsanokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "response":Ljava/lang/String;
    sget-object v1, Lccsancom/vungle/warren/network/converters/JsonConverter;->gson:Lccsancom/google/gson/Gson;

    const-class v2, Lccsancom/google/gson/JsonObject;

    invoke-virtual {v1, v0, v2}, Lccsancom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/gson/JsonObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {p1}, Lccsanokhttp3/ResponseBody;->close()V

    .line 37
    return-object v1

    .line 39
    .end local v0    # "response":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lccsanokhttp3/ResponseBody;->close()V

    .line 40
    throw v0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    check-cast p1, Lccsanokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/network/converters/JsonConverter;->convert(Lccsanokhttp3/ResponseBody;)Lccsancom/google/gson/JsonObject;

    move-result-object p1

    return-object p1
.end method

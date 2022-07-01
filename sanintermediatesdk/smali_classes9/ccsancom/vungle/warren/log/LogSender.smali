.class Lccsancom/vungle/warren/log/LogSender;
.super Ljava/lang/Object;
.source "LogSender.java"


# static fields
.field private static final HEADER_LOG_BATCH_ID:Ljava/lang/String; = "batch_id"

.field private static final HEADER_LOG_DEVICE_ID:Ljava/lang/String; = "device_guid"

.field private static final HEADER_LOG_PAYLOAD:Ljava/lang/String; = "payload"

.field private static final PREFS_BATCH_ID_KEY:Ljava/lang/String; = "batch_id"

.field private static final PREFS_DEVICE_ID_KEY:Ljava/lang/String; = "device_id"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private batchId:I

.field private final deviceId:Ljava/lang/String;

.field private final prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

.field private final vungleApiClient:Lccsancom/vungle/warren/VungleApiClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lccsancom/vungle/warren/log/LogSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/log/LogSender;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsancom/vungle/warren/VungleApiClient;Lccsancom/vungle/warren/persistence/FilePreferences;)V
    .locals 1
    .param p1, "apiClient"    # Lccsancom/vungle/warren/VungleApiClient;
    .param p2, "prefs"    # Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lccsancom/vungle/warren/log/LogSender;->vungleApiClient:Lccsancom/vungle/warren/VungleApiClient;

    .line 41
    iput-object p2, p0, Lccsancom/vungle/warren/log/LogSender;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 42
    invoke-direct {p0}, Lccsancom/vungle/warren/log/LogSender;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/log/LogSender;->deviceId:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lccsancom/vungle/warren/log/LogSender;->getBatchId()I

    move-result v0

    iput v0, p0, Lccsancom/vungle/warren/log/LogSender;->batchId:I

    .line 44
    return-void
.end method

.method private getBatchId()I
    .locals 3

    .line 111
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogSender;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    const-string v1, "batch_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/persistence/FilePreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 3

    .line 101
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogSender;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    const-string v1, "device_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/persistence/FilePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "uuid":Ljava/lang/String;
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogSender;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    invoke-virtual {v2, v1, v0}, Lccsancom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 105
    iget-object v1, p0, Lccsancom/vungle/warren/log/LogSender;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/FilePreferences;->apply()V

    .line 107
    :cond_0
    return-object v0
.end method

.method private getPayload(Ljava/io/File;)Lccsancom/google/gson/JsonArray;
    .locals 5
    .param p1, "logFile"    # Ljava/io/File;

    .line 80
    new-instance v0, Lccsancom/google/gson/JsonArray;

    invoke-direct {v0}, Lccsancom/google/gson/JsonArray;-><init>()V

    .line 81
    .local v0, "logArray":Lccsancom/google/gson/JsonArray;
    const/4 v1, 0x0

    .line 83
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 85
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "logItem":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 86
    invoke-static {v3}, Lccsancom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsJsonObject()Lccsancom/google/gson/JsonObject;

    move-result-object v2

    .line 87
    .local v2, "logEntry":Lccsancom/google/gson/JsonObject;
    invoke-virtual {v0, v2}, Lccsancom/google/gson/JsonArray;->add(Lccsancom/google/gson/JsonElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local v2    # "logEntry":Lccsancom/google/gson/JsonObject;
    goto :goto_0

    .line 93
    .end local v3    # "logItem":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 94
    nop

    .line 96
    return-object v0

    .line 93
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lccsancom/vungle/warren/log/LogSender;->TAG:Ljava/lang/String;

    const-string v4, "Invalidate log document file."

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    const/4 v3, 0x0

    .line 93
    invoke-static {v1}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    return-object v3

    .line 93
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v1}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 94
    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method private saveBatchId()V
    .locals 3

    .line 115
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogSender;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    iget v1, p0, Lccsancom/vungle/warren/log/LogSender;->batchId:I

    const-string v2, "batch_id"

    invoke-virtual {v0, v2, v1}, Lccsancom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;I)Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 116
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogSender;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FilePreferences;->apply()V

    .line 117
    return-void
.end method


# virtual methods
.method sendLogs([Ljava/io/File;)V
    .locals 7
    .param p1, "pendingFiles"    # [Ljava/io/File;

    .line 47
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 48
    .local v2, "loggingFile":Ljava/io/File;
    new-instance v3, Lccsancom/google/gson/JsonObject;

    invoke-direct {v3}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 49
    .local v3, "requestBody":Lccsancom/google/gson/JsonObject;
    iget v4, p0, Lccsancom/vungle/warren/log/LogSender;->batchId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "batch_id"

    invoke-virtual {v3, v5, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 50
    iget-object v4, p0, Lccsancom/vungle/warren/log/LogSender;->deviceId:Ljava/lang/String;

    const-string v5, "device_guid"

    invoke-virtual {v3, v5, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :try_start_0
    invoke-direct {p0, v2}, Lccsancom/vungle/warren/log/LogSender;->getPayload(Ljava/io/File;)Lccsancom/google/gson/JsonArray;

    move-result-object v4

    .line 53
    .local v4, "payload":Lccsancom/google/gson/JsonArray;
    if-nez v4, :cond_0

    .line 54
    invoke-static {v2}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V

    .line 55
    goto :goto_2

    .line 57
    :cond_0
    const-string v5, "payload"

    invoke-virtual {v3, v5, v4}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 59
    iget-object v5, p0, Lccsancom/vungle/warren/log/LogSender;->vungleApiClient:Lccsancom/vungle/warren/VungleApiClient;

    invoke-virtual {v5, v3}, Lccsancom/vungle/warren/VungleApiClient;->sendLog(Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v5

    invoke-interface {v5}, Lccsancom/vungle/warren/network/Call;->execute()Lccsancom/vungle/warren/network/Response;

    move-result-object v5

    .line 60
    .local v5, "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    invoke-virtual {v5}, Lccsancom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 61
    invoke-static {v2}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v4    # "payload":Lccsancom/google/gson/JsonArray;
    .end local v5    # "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    :cond_1
    goto :goto_1

    .line 63
    :catch_0
    move-exception v4

    .line 64
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lccsancom/vungle/warren/log/LogSender;->TAG:Ljava/lang/String;

    const-string v6, "Failed to generate request payload."

    invoke-static {v5, v6}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    iget v4, p0, Lccsancom/vungle/warren/log/LogSender;->batchId:I

    const v5, 0x7fffffff

    if-lt v4, v5, :cond_2

    .line 68
    const/4 v4, -0x1

    iput v4, p0, Lccsancom/vungle/warren/log/LogSender;->batchId:I

    .line 72
    :cond_2
    iget v4, p0, Lccsancom/vungle/warren/log/LogSender;->batchId:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lccsancom/vungle/warren/log/LogSender;->batchId:I

    .line 47
    .end local v2    # "loggingFile":Ljava/io/File;
    .end local v3    # "requestBody":Lccsancom/google/gson/JsonObject;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_3
    invoke-direct {p0}, Lccsancom/vungle/warren/log/LogSender;->saveBatchId()V

    .line 76
    return-void
.end method

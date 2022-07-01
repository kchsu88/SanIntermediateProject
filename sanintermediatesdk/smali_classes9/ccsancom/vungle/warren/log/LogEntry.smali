.class Lccsancom/vungle/warren/log/LogEntry;
.super Ljava/lang/Object;
.source "LogEntry.java"


# static fields
.field private static final LOG_ITEM_BUNDLE_ID:Ljava/lang/String; = "bundle_id"

.field private static final LOG_ITEM_CONTEXT:Ljava/lang/String; = "context"

.field private static final LOG_ITEM_CREATION_DATE:Ljava/lang/String; = "device_timestamp"

.field private static final LOG_ITEM_CUSTOM_DATA:Ljava/lang/String; = "custom_data"

.field private static final LOG_ITEM_EVENT_ID:Ljava/lang/String; = "event_id"

.field private static final LOG_ITEM_EX_CLASS:Ljava/lang/String; = "exception_class"

.field private static final LOG_ITEM_LEVEL:Ljava/lang/String; = "log_level"

.field private static final LOG_ITEM_MESSAGE:Ljava/lang/String; = "raw_log"

.field private static final LOG_ITEM_SDK_USER_AGENT:Ljava/lang/String; = "sdk_user_agent"

.field private static final LOG_ITEM_THREAD_ID:Ljava/lang/String; = "thread_id"

.field private static final LOG_ITEM_TIME_ZONE:Ljava/lang/String; = "time_zone"

.field private static final LOG_METADATA:Ljava/lang/String; = "metadata"


# instance fields
.field private bundleID:Ljava/lang/String;

.field private context:Ljava/lang/String;

.field private creationDate:Ljava/lang/String;

.field private customData:Ljava/lang/String;

.field private eventID:Ljava/lang/String;

.field private exClass:Ljava/lang/String;

.field private level:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private threadId:Ljava/lang/String;

.field private timeZone:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "logLevel"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/String;
    .param p4, "eventID"    # Ljava/lang/String;
    .param p5, "userAgent"    # Ljava/lang/String;
    .param p6, "bundleID"    # Ljava/lang/String;
    .param p7, "timeZone"    # Ljava/lang/String;
    .param p8, "creationDate"    # Ljava/lang/String;
    .param p9, "customData"    # Ljava/lang/String;
    .param p10, "exClass"    # Ljava/lang/String;
    .param p11, "threadId"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lccsancom/vungle/warren/log/LogEntry;->level:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lccsancom/vungle/warren/log/LogEntry;->message:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lccsancom/vungle/warren/log/LogEntry;->context:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lccsancom/vungle/warren/log/LogEntry;->eventID:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lccsancom/vungle/warren/log/LogEntry;->userAgent:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lccsancom/vungle/warren/log/LogEntry;->bundleID:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lccsancom/vungle/warren/log/LogEntry;->timeZone:Ljava/lang/String;

    .line 51
    iput-object p8, p0, Lccsancom/vungle/warren/log/LogEntry;->creationDate:Ljava/lang/String;

    .line 52
    iput-object p9, p0, Lccsancom/vungle/warren/log/LogEntry;->customData:Ljava/lang/String;

    .line 53
    iput-object p10, p0, Lccsancom/vungle/warren/log/LogEntry;->exClass:Ljava/lang/String;

    .line 54
    iput-object p11, p0, Lccsancom/vungle/warren/log/LogEntry;->threadId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private addMetadataProperty(Lccsancom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "metadataObj"    # Lccsancom/google/gson/JsonObject;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 77
    if-eqz p3, :cond_0

    .line 78
    invoke-virtual {p1, p2, p3}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public toJsonString()Ljava/lang/String;
    .locals 4

    .line 59
    new-instance v0, Lccsancom/google/gson/JsonObject;

    invoke-direct {v0}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 60
    .local v0, "logObj":Lccsancom/google/gson/JsonObject;
    iget-object v1, p0, Lccsancom/vungle/warren/log/LogEntry;->message:Ljava/lang/String;

    const-string v2, "raw_log"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v1, Lccsancom/google/gson/JsonObject;

    invoke-direct {v1}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 62
    .local v1, "metadataObj":Lccsancom/google/gson/JsonObject;
    const-string v2, "metadata"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 63
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogEntry;->level:Ljava/lang/String;

    const-string v3, "log_level"

    invoke-direct {p0, v1, v3, v2}, Lccsancom/vungle/warren/log/LogEntry;->addMetadataProperty(Lccsancom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogEntry;->context:Ljava/lang/String;

    const-string v3, "context"

    invoke-direct {p0, v1, v3, v2}, Lccsancom/vungle/warren/log/LogEntry;->addMetadataProperty(Lccsancom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogEntry;->eventID:Ljava/lang/String;

    const-string v3, "event_id"

    invoke-direct {p0, v1, v3, v2}, Lccsancom/vungle/warren/log/LogEntry;->addMetadataProperty(Lccsancom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogEntry;->userAgent:Ljava/lang/String;

    const-string v3, "sdk_user_agent"

    invoke-direct {p0, v1, v3, v2}, Lccsancom/vungle/warren/log/LogEntry;->addMetadataProperty(Lccsancom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogEntry;->bundleID:Ljava/lang/String;

    const-string v3, "bundle_id"

    invoke-direct {p0, v1, v3, v2}, Lccsancom/vungle/warren/log/LogEntry;->addMetadataProperty(Lccsancom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogEntry;->timeZone:Ljava/lang/String;

    const-string v3, "time_zone"

    invoke-direct {p0, v1, v3, v2}, Lccsancom/vungle/warren/log/LogEntry;->addMetadataProperty(Lccsancom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogEntry;->creationDate:Ljava/lang/String;

    const-string v3, "device_timestamp"

    invoke-direct {p0, v1, v3, v2}, Lccsancom/vungle/warren/log/LogEntry;->addMetadataProperty(Lccsancom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogEntry;->customData:Ljava/lang/String;

    const-string v3, "custom_data"

    invoke-direct {p0, v1, v3, v2}, Lccsancom/vungle/warren/log/LogEntry;->addMetadataProperty(Lccsancom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogEntry;->exClass:Ljava/lang/String;

    const-string v3, "exception_class"

    invoke-direct {p0, v1, v3, v2}, Lccsancom/vungle/warren/log/LogEntry;->addMetadataProperty(Lccsancom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogEntry;->threadId:Ljava/lang/String;

    const-string v3, "thread_id"

    invoke-direct {p0, v1, v3, v2}, Lccsancom/vungle/warren/log/LogEntry;->addMetadataProperty(Lccsancom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Lccsancom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

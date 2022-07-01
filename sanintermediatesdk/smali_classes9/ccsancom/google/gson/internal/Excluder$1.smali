.class Lccsancom/google/gson/internal/Excluder$1;
.super Lccsancom/google/gson/TypeAdapter;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/gson/internal/Excluder;->create(Lccsancom/google/gson/Gson;Lccsancom/google/gson/reflect/TypeToken;)Lccsancom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lccsancom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/gson/internal/Excluder;

.field final synthetic val$gson:Lccsancom/google/gson/Gson;

.field final synthetic val$skipDeserialize:Z

.field final synthetic val$skipSerialize:Z

.field final synthetic val$type:Lccsancom/google/gson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lccsancom/google/gson/internal/Excluder;ZZLccsancom/google/gson/Gson;Lccsancom/google/gson/reflect/TypeToken;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/gson/internal/Excluder;

    .line 122
    iput-object p1, p0, Lccsancom/google/gson/internal/Excluder$1;->this$0:Lccsancom/google/gson/internal/Excluder;

    iput-boolean p2, p0, Lccsancom/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lccsancom/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    iput-object p4, p0, Lccsancom/google/gson/internal/Excluder$1;->val$gson:Lccsancom/google/gson/Gson;

    iput-object p5, p0, Lccsancom/google/gson/internal/Excluder$1;->val$type:Lccsancom/google/gson/reflect/TypeToken;

    invoke-direct {p0}, Lccsancom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method private delegate()Lccsancom/google/gson/TypeAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lccsancom/google/gson/internal/Excluder$1;->delegate:Lccsancom/google/gson/TypeAdapter;

    .line 144
    .local v0, "d":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    .line 145
    move-object v1, v0

    goto :goto_0

    .line 146
    :cond_0
    iget-object v1, p0, Lccsancom/google/gson/internal/Excluder$1;->val$gson:Lccsancom/google/gson/Gson;

    iget-object v2, p0, Lccsancom/google/gson/internal/Excluder$1;->this$0:Lccsancom/google/gson/internal/Excluder;

    iget-object v3, p0, Lccsancom/google/gson/internal/Excluder$1;->val$type:Lccsancom/google/gson/reflect/TypeToken;

    invoke-virtual {v1, v2, v3}, Lccsancom/google/gson/Gson;->getDelegateAdapter(Lccsancom/google/gson/TypeAdapterFactory;Lccsancom/google/gson/reflect/TypeToken;)Lccsancom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/gson/internal/Excluder$1;->delegate:Lccsancom/google/gson/TypeAdapter;

    .line 144
    :goto_0
    return-object v1
.end method


# virtual methods
.method public read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lccsancom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lccsancom/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->skipValue()V

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 131
    :cond_0
    invoke-direct {p0}, Lccsancom/google/gson/internal/Excluder$1;->delegate()Lccsancom/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/gson/TypeAdapter;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .param p1, "out"    # Lccsancom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lccsancom/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->nullValue()Lccsancom/google/gson/stream/JsonWriter;

    .line 137
    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lccsancom/google/gson/internal/Excluder$1;->delegate()Lccsancom/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/google/gson/TypeAdapter;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 140
    return-void
.end method

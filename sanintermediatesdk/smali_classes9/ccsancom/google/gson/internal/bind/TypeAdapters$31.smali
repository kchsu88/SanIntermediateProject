.class Lccsancom/google/gson/internal/bind/TypeAdapters$31;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lccsancom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/gson/internal/bind/TypeAdapters;->newFactory(Lccsancom/google/gson/reflect/TypeToken;Lccsancom/google/gson/TypeAdapter;)Lccsancom/google/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lccsancom/google/gson/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lccsancom/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lccsancom/google/gson/reflect/TypeToken;Lccsancom/google/gson/TypeAdapter;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lccsancom/google/gson/internal/bind/TypeAdapters$31;->val$type:Lccsancom/google/gson/reflect/TypeToken;

    iput-object p2, p0, Lccsancom/google/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lccsancom/google/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lccsancom/google/gson/Gson;Lccsancom/google/gson/reflect/TypeToken;)Lccsancom/google/gson/TypeAdapter;
    .locals 1
    .param p1, "gson"    # Lccsancom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/gson/Gson;",
            "Lccsancom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lccsancom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 827
    .local p2, "typeToken":Lccsancom/google/gson/reflect/TypeToken;, "Lccsancom/google/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/TypeAdapters$31;->val$type:Lccsancom/google/gson/reflect/TypeToken;

    invoke-virtual {p2, v0}, Lccsancom/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lccsancom/google/gson/TypeAdapter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

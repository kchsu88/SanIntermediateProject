.class Lccsancom/google/gson/internal/bind/ArrayTypeAdapter$1;
.super Ljava/lang/Object;
.source "ArrayTypeAdapter.java"

# interfaces
.implements Lccsancom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/gson/internal/bind/ArrayTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lccsancom/google/gson/Gson;Lccsancom/google/gson/reflect/TypeToken;)Lccsancom/google/gson/TypeAdapter;
    .locals 5
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

    .line 42
    .local p2, "typeToken":Lccsancom/google/gson/reflect/TypeToken;, "Lccsancom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lccsancom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 43
    .local v0, "type":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 47
    :cond_1
    invoke-static {v0}, Lccsancom/google/gson/internal/$Gson$Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 48
    .local v1, "componentType":Ljava/lang/reflect/Type;
    invoke-static {v1}, Lccsancom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lccsancom/google/gson/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {p1, v2}, Lccsancom/google/gson/Gson;->getAdapter(Lccsancom/google/gson/reflect/TypeToken;)Lccsancom/google/gson/TypeAdapter;

    move-result-object v2

    .line 49
    .local v2, "componentTypeAdapter":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<*>;"
    new-instance v3, Lccsancom/google/gson/internal/bind/ArrayTypeAdapter;

    .line 50
    invoke-static {v1}, Lccsancom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p1, v2, v4}, Lccsancom/google/gson/internal/bind/ArrayTypeAdapter;-><init>(Lccsancom/google/gson/Gson;Lccsancom/google/gson/TypeAdapter;Ljava/lang/Class;)V

    .line 49
    return-object v3
.end method

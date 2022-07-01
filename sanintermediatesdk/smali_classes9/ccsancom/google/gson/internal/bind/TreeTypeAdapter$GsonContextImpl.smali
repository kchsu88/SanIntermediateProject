.class final Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lccsancom/google/gson/JsonSerializationContext;
.implements Lccsancom/google/gson/JsonDeserializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/gson/internal/bind/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GsonContextImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/gson/internal/bind/TreeTypeAdapter;


# direct methods
.method private constructor <init>(Lccsancom/google/gson/internal/bind/TreeTypeAdapter;)V
    .locals 0

    .line 153
    .local p0, "this":Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;, "Lccsancom/google/gson/internal/bind/TreeTypeAdapter<TT;>.GsonContextImpl;"
    iput-object p1, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lccsancom/google/gson/internal/bind/TreeTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/gson/internal/bind/TreeTypeAdapter;Lccsancom/google/gson/internal/bind/TreeTypeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/gson/internal/bind/TreeTypeAdapter;
    .param p2, "x1"    # Lccsancom/google/gson/internal/bind/TreeTypeAdapter$1;

    .line 153
    .local p0, "this":Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;, "Lccsancom/google/gson/internal/bind/TreeTypeAdapter<TT;>.GsonContextImpl;"
    invoke-direct {p0, p1}, Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lccsancom/google/gson/internal/bind/TreeTypeAdapter;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lccsancom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "json"    # Lccsancom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/gson/JsonParseException;
        }
    .end annotation

    .line 162
    .local p0, "this":Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;, "Lccsancom/google/gson/internal/bind/TreeTypeAdapter<TT;>.GsonContextImpl;"
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lccsancom/google/gson/internal/bind/TreeTypeAdapter;

    iget-object v0, v0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->gson:Lccsancom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/gson/Gson;->fromJson(Lccsancom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;)Lccsancom/google/gson/JsonElement;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;

    .line 155
    .local p0, "this":Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;, "Lccsancom/google/gson/internal/bind/TreeTypeAdapter<TT;>.GsonContextImpl;"
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lccsancom/google/gson/internal/bind/TreeTypeAdapter;

    iget-object v0, v0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->gson:Lccsancom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lccsancom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lccsancom/google/gson/JsonElement;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .line 158
    .local p0, "this":Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;, "Lccsancom/google/gson/internal/bind/TreeTypeAdapter<TT;>.GsonContextImpl;"
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lccsancom/google/gson/internal/bind/TreeTypeAdapter;

    iget-object v0, v0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->gson:Lccsancom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

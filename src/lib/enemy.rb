# 子分エネミー
class Enemy
  attr_accessor :mesh, :expired

  # 初期化
  def initialize(x: nil, y: nil, z: nil)
    # 初期位置指定が無ければランダムに配置する
    x ||= (rand(-20..20) / 10.0) - 0.5
    y ||= (rand(10) / 10.0) + 1
    z ||= (rand(10) / 10.0) + 3
    pos = Mittsu::Vector3.new(x, y, -z)
    self.mesh = MeshFactory.create_enemy(r: 0.2, color: '#483d8b')
    mesh.position = pos
    self.expired = false
  end

  # メッシュの現在位置を返す
  def position
    mesh.position
  end

  # 1フレーム分の進行処理
  def play
    dx = rand(3)
    dy = rand(3)
    case dx
    when 1
      mesh.position.x += 0
    when 2
      mesh.position.x -= 0
    end

    case dy
    when 1
      mesh.position.y += 0
    when 2
      mesh.position.y -= 0
    end
  end
end

<?php include 'header_inc.php'; ?>
<main>
  <?php
  include 'data/data.php';
  foreach ($exhibits as $exhibit) :
  ?>
    <article>
      <h2><?= $exhibit['title'] ?></h2>
      <p><?= $exhibit['description'] ?></p>
      <img src="gallery/<?= $exhibit['image'] ?>"
        fetchpriority="high" decoding="sync">
    </article>
  <?php endforeach; ?>
</main>
<?php include 'footer_inc.php'; ?>